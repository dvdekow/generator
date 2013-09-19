class Api::V1::BaseController < ActionController::Base
  respond_to :json, :xml

  before_filter :authenticate_user

  private
    def authenticate_user
      @current_user = User.find_by_authentication_token(params[:token])
    end

    def current_user
      unless @current_user
      	respond_with({:error => "Token is invalid."})
      end
    end
end