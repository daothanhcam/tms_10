class EnrollmentTask < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  belongs_to :task
  belongs_to :enrollment_subject
end
