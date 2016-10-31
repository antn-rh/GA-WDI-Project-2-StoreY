class PinsController < ApplicationController
  before_action :set_pin, only: [:edit, :show, :update, :destroy]

  def index
    @pins = Pin.all
  end

  def new
    @pin = Pin.new
  end

  def edit
  end

  def show
  end

  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      redirect_to user_story_pins_path
    else
      render :new
    end
  end

  def update
    if @pin.update_attributes(pin_params)
      redirect_to @pin
    else
      render :edit
    end
  end

  def destroy
    @pin.destroy
    redirect_to user_story_pins_path
  end

private
  def set_pin
    @pin = Pin.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:user_id, :story_id, :text)
  end
end
