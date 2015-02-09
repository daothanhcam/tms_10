class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
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
  def set_course
    @course = Course.find params[:id]
  end

  def course_params
    params.require(:course).permit(:name, :description, :start, :finish, 
                                    courses_subjects_attributes: [:subject_id, :id, :_destroy])
  end
end
