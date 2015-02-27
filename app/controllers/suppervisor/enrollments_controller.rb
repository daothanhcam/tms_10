class Suppervisor::EnrollmentsController < ::BaseSuppervisorController
  before_action :set_course, only: [:new, :create]

  def new
    @enrollment = @course.enrollments.new
    @users = User.dont_join_any_courses + User.joining_with_course(@course) + User.finished_all_courses
  end

  private
  def set_course
    @course = Course.find params[:course_id]
  end
  
end