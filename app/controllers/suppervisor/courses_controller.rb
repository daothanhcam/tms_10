class Suppervisor::CoursesController < ::BaseSuppervisorController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
    @subjects = @course.subjects
  end

  def new
    @course = Course.new
    @subjects = Subject.all
  end

  def edit
    @subjects = Subject.all
  end

  def create
    @course = Course.new course_params
    if @course.save
      redirect_to suppervisor_courses_path
    else
      @subjects = Subject.all
      render :new
    end
  end

  def update
    if @course.update_attributes course_params
      redirect_to suppervisor_course_path(@course)
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to suppervisor_courses_path
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
