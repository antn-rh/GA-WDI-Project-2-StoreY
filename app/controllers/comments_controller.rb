class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.find(params[:user_id])
    @story = Story.find(params[:story_id])
    @pin = Pin.find(params[:pin_id])
    @comments = @pin.comments
  end

  def new
    @user = User.find(params[:user_id])
    @story = Story.find(params[:story_id])
    @pin = Pin.find(params[:pin_id])
    @comment = Comment.new
  end

  def show
  end

  def edit
  end

  def create
    @user = User.find(params[:user_id])
    @story = Story.find(params[:story_id])
    @pin = Pin.find(params[:pin_id])
    @comment = Comment.new(comment_params)
    @comment.pin = @pin
    if @comment.save
      redirect_to user_story_pin_path(@user, @story, @pin)
    else
      render :new
    end
  end

  def update
    if @comment = update_attributes(comment_params)
      redirect_to user_story_pin_comment_path(@user, @story, @pin, @comment)
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to user_story_pin_comments_path(@user, @story, @pin)
  end

private
  def set_comment
    @user = User.find(params[:user_id])
    @story = Story.find(params[:story_id])
    @pin = Pin.find(params[:pin_id])
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:user_id, :pin_id, :text)
  end
end
