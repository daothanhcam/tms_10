class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :check_right_user, only: [:edit, :update]

  def index
    @users = User.trainees
  end

  def show
  end

  def new
    redirect_to root_path
  end

  def edit
  end

  def create
  end

  def update
    if @user.update user_params
        redirect_to @user
        log_activity
    else
      render :edit
    end
  end

  def log_activity
    act = current_user.activities.new(act_type: "update profile")
    act.save
  end

  def destroy
  end

  private
  def set_user
    @user = User.find params[:id]
  end

  def user_params
    params.require(:user).permit :name, :email, :image, :password, :password_confirmation, :role 
  end
    
  def check_right_user
    redirect_to root_path unless current_user == @user
  end
end
