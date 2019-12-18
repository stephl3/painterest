class Api::BoardsPinsController < ApplicationController

  before_action :require_login

  def create
    @boards_pins = BoardsPins.new(boards_pins_params)
    if @boards_pins.save
      render 'api/boards_pins/show'
    else
      render json: @boards_pins.errors.full_messages, status: 422
    end
  end

  def index
    @boards_pins = BoardsPins.all
    render 'api/boards_pins/index'
  end

  def destroy
    @boards_pins = current_user.boards_pins.find(params[:id])
    if @boards_pins
      @boards_pins.destroy
      render 'api/boards_pins/show'
    else
      render json: @boards_pins.errors.full_messages, status: 401
    end
  end

  private
  def boards_pins_params
    params.require(:boards_pins).permit(:board_id, :pin_id)
  end

end
