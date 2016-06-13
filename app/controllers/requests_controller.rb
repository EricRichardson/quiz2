class RequestsController < ApplicationController
  before_action :find_request, only: [:show]
  def new
    @request = Request.new
  end

  def create
    @request = Request.new request_params
    if @request.save
      redirect_to request_path @request
    else
      render :new
    end
  end

  def show
  end

  def index
    @requests = Request.order(created_at: :desc)
  end

  private

    def request_params
      params.require(:request).permit(:name, :email, :department, :message )
    end

    def find_request
      @request = Request.find params[:id]
    end
end
