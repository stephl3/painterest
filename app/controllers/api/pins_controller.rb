class Api::PinsController < ApplicationController

  # before_action :require_login
  def create
    @pin = Pin.new(pin_params)
    @pin.user_id = current_user.id
    # @pin.photo.attach(pin_params[:photo])
    
    if @pin.save
      render "api/pins/show"
    else
      render json: @pin.errors.full_messages, status: 422
    end
  end
  
  def show
    @pin = Pin.find(params[:id])
    render "api/pins/show"
  end
  
  def index
    @pins = Pin.all
    render "api/pins/index"
  end

  def update
    @pin = current_user.pins.find(params[:id])

    if @pin.update(pin_params)
      render "api/pins/show"
    else
      render json: ["Can't edit this pin!"], status: 401
    end
  end

  def destroy
    @pin = current_user.pins.find(params[:id])
    if @pin
      @pin.destroy
      render "api/pins/show"
    else
      render json: ["Can't delete this pin!"], status: 401
    end
  end

  private
  def pin_params
    params.require(:pin).permit(:id, :title, :description, :url, :photo, :user_id)
  end

end
