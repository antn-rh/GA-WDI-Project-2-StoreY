class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # have a second before_action for index, new, etc.

  def welcome
    @user = User.new
    if current_user != nil
      redirect_to users_path
    end
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
    if current_user != nil
      redirect_to users_path
    end
  end

  def show
  end

  def edit
    if @user != current_user
      redirect_to @user
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to users_path
    else
      render :new
    end
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
