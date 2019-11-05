class Api::SessionsController < ApplicationController

  def create
    username = params[:user][:username]
    password = params[:user][:password]
    @user = User.find_by_credentials(username, password)

    if @user
      log_in!(@user)
      render `api/users/show`
    else
      # circle back: add conditionals to display appropriate error messages
      render json: ["Hmm...that doesn't look like an email address.", "The password you entered is incorrect."], status: 401
    end
  end

  def destroy
    @user = current_user
    if @user
      log_out!
      render json: {}
    else
      render json: ["No current user"], status: 404
    end
  end

end
