class EnrollmentSubject < ActiveRecord::Base
  before_save :default_status_values
  belongs_to :course
  belongs_to :user
  belongs_to :courses_subject
  belongs_to :enrollment
  belongs_to :subject
  has_many :enrollment_tasks

  def default_status_values
    self.status = 0 if self.status.nil?
  end
end