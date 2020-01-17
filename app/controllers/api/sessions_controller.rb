class Api::SessionsController < ApplicationController

  def create
    email = params[:user][:email]
    password = params[:user][:password]
    @user = User.includes(:pins).find_by_credentials(email, password)

    if @user
      log_in!(@user)
      render "api/users/show"
    else
      # circle back: add conditionals to display appropriate error messages
      render json: ["Invalid email or password."], status: 401
    end
  end

  def destroy
    @user = current_user
    if @user
      log_out!
      render "api/users/show"
    else
      render json: ["No current user"], status: 401
    end
  end

end
