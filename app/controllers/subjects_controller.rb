class SubjectsController < ApplicationController
  before_action :logged_in_user, only: [:index, :show]
  before_action :current_subject, only: [:show, :edit, :destroy, :update] 

  def index
    @subjects = current_user.subjects.all
    @tasks = Task.all
  end

  def show
    @tasks = @subject.tasks
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
  def subject_params
    params.require(:subject).permit(:name, :description,
     tasks_attributes: [:name, :id, :_destroy])
  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def current_subject
    @subject = Subject.find params[:id]
  end
end