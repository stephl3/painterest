class Api::UsersController < ApplicationController

  # sign up
  def create
    @user = User.new(new_user_params)
    if @user.save
      log_in!(@user)
      render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
    render "api/users/show"
  end

  def update
    @user = User.find(params[:id])
    # @user.photo.purge
    # debugger;
    @user.photo.attach(edit_user_params[:photo])
    if @user.update(edit_user_params)
      render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private
  def new_user_params
    params.require(:user).permit(:email, :password)
  end

  def edit_user_params
    params.require(:user).permit(:first_name, :last_name, :username, :description, :location, :photo, :email)
  end

end
