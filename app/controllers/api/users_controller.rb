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

    unless edit_user_params[:photo].is_a? String
      @user.photo.attach(edit_user_params[:photo])
    end

    # refactor...
    if @user.update(
      first_name: no_null(edit_user_params[:firstName]),
      last_name: no_null(edit_user_params[:lastName]),
      username: no_null(edit_user_params[:username]),
      email: no_null(edit_user_params[:email]),
      description: no_null(edit_user_params[:description]),
      location: no_null(edit_user_params[:location])
    )
      render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private
  def selected_user
    User.find(params[:id])
  end
  
  def new_user_params
    params.require(:user).permit(:email, :password)
  end

  def edit_user_params
    params.require(:user).permit(:id, :firstName, :lastName, :username, :description, :location, :photo, :email)
  end

  def no_null(text)
    text || ""
  end

end
