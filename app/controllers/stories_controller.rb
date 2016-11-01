class StoriesController < ApplicationController
before_action :set_story, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.find(params[:user_id])
    @stories = @user.stories
  end

  def new
    @user = User.find(params[:user_id])
    @story = Story.new
    if current_user != @user
      redirect_to user_stories_path(@user)
    end
  end

  def show
  end

  def edit
  end

  def create
    @user = User.find(params[:user_id])
    @story = Story.new(story_params)
    @story.user = @user
    if @story.save
      redirect_to user_stories_path(@user)
    else
      render :new
    end
  end

  def update
    if @story.update_attributes(story_params)
      redirect_to user_story_path(@user, @story)
    else
      render :edit
    end
  end

  def destroy
    if current_user == @story.user
      @story.destroy
      redirect_to user_stories_path(@user)
    else
      redirect_to user_story_path(@user, @story)
    end
  end

private
  def set_story
    @story = Story.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def story_params
    params.require(:story).permit(:user_id, :title, :description, :location)
  end
end
