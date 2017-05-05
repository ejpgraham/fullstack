class Api::SessionsController < ApplicationController

  def create
    @user = User.find_user_by_credentials(
      params[:user][:username],
      params[:user][:password])

    if @user
      log_in(@user)
      render "api/users/show"
    else
      render json: { base: ["Invalid username/password"] }, status: 422
    end

  end

  def destroy
    @user = current_user

    if @user
      log_out
      render json: {}
    else
      render json: { base: ["No current user to login!"] }, status: 404
    end
  end

end
