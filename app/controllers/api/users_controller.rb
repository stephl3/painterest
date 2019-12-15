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
    @user = selected_user
  end
  
  def edit
    @user = selected_user
    render "api/users/show"
  end

  def update
    @user = selected_user
    if @user.update(edit_user_params)
      render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private
  def selected_user
    User.includes(:boards, :pins, :boards_pins).find(params[:id])
  end
  
  def new_user_params
    params.require(:user).permit(:email, :password)
  end

  def edit_user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :description, :location, :photo)
  end

end
