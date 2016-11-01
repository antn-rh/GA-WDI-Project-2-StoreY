class PinsController < ApplicationController
  before_action :set_pin, only: [:edit, :show, :update, :destroy]

  def index
    @user = User.find(params[:user_id])
    @story = Story.find(params[:story_id])
    @pins = @story.pins
  end

  def new
    @user = User.find(params[:user_id])
    @story = Story.find(params[:story_id])
    @pin = Pin.new
    if current_user != @pin.story.user
      redirect_to user_story_pin_path(@user, @story)
    end
  end

  def show
  end

  def edit
    if current_user != @pin.story.user
      redirect_to user_story_pin_path(@user, @story, @pin)
    end
  end

  def create
    @user = User.find(params[:user_id])
    @story = Story.find(params[:story_id])
    @pin = Pin.new(pin_params)
    @pin.story = @story
    if @pin.save
      redirect_to user_story_path(@user, @story)
    else
      render :new
    end
  end

  def update
    if current_user == @pin.story.user
      if @pin.update_attributes(pin_params)
        redirect_to user_story_pin_path(@user, @story, @pin)
      else
        render :edit
      end
    else
      redirect_to user_story_pin_path(@user, @story, @pin)
    end
  end

  def destroy
    @pin.destroy
    redirect_to user_story_pins_path(@user, @story)
  end

private
  def set_pin
    @user = User.find(params[:user_id])
    @story = Story.find(params[:story_id])
    @pin = Pin.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:user_id, :story_id, :text, :image)
  end
end
