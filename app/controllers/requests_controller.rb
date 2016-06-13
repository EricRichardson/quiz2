class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def create
    @request = Request.new request_params
    if @request.save
      render text: "Made it"
    else
      render text: "FAIL"
    end
  end

  private

    def request_params
      params.require(:request).permit(:name, :email, :department, :message )
    end
end
