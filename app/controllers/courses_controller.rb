class CoursesController < ApplicationController
  before_action :logged_in_user
  before_action :set_course, only: [:show]

  def index
    @courses = Course.all
  end

  def show
    @enrollment_subjects = current_user.enrollment_subjects.where course: @course
    @users = @course.users
    @subjects = @course.subjects
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
  
  def set_course
    @course = Course.find params[:id]
  end

end