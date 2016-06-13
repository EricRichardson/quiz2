class RequestsController < ApplicationController
  before_action :find_request, only: [:show, :edit, :update, :destroy, :complete]

  def home
  end

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

  def edit
  end

  def update
    if @request.update request_params
      redirect_to request_path @request
    else
      render :edit
    end
  end

  def destroy
    @request.destroy
    redirect_to requests_path
  end

  def search
    term = params[:search]
    @requests = Request.search(term)
  end

  private

    def request_params
      params.require(:request).permit(:name, :email, :department, :message, :completed )
    end

    def find_request
      @request = Request.find params[:id]
    end
end
