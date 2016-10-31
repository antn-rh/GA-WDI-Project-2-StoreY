class StoriesController < ApplicationController
before_action :set_story, only: [:show, :edit, :update, :destroy]

  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def show
  end

  def edit
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to stories_path
    else
      render :new
    end
  end

  def update
    if @story.update_attributes(story_params)
      redirect_to @story
    else
      render :edit
    end
  end

  def destroy
    @story.destroy
    redirect_to stories_path
  end

private
  def set_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:user_id, :title, :description, :location)
  end
end
