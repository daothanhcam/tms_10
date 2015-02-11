class Enrollment < ActiveRecord::Base
  before_save :set_status_default_value
  belongs_to :course
  belongs_to :user
  has_many :enrollment_subjects, dependent: :destroy

  private
  def set_status_default_value
   self.status = 0 if self.status.nil?
  end 
end
