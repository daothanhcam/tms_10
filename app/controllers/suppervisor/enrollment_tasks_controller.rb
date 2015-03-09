class Suppervisor::EnrollmentTasksController < ::BaseSuppervisorController

  def create
    @course = Course.find params[:course_id]
    @subject = Subject.find params[:subject_id]
    if params[:flag] == '1'
      @subject.tasks.each do |task|
        @enrollment_task = task.enrollment_tasks.build subject_id: params[:subject_id], 
                                                      enrollment_subject: @enrollment_subject, 
                                                      status: 1
        @enrollment_task.save
      end
    else
      @subject.tasks.each do |task|
        task.enrollment_tasks.update_all status: 2
      end
    end
    @subject.enrollment_subjects.update_all status: params[:flag]
    @subject.save
    redirect_to suppervisor_course_path @course
  end
end