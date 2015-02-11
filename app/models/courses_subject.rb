class CoursesSubject < ActiveRecord::Base
  belongs_to :course
  belongs_to :subject
  has_many :enrollment_subjects, dependent: :destroy
  
  def self.getCourseSubject (course,subject)
    CoursesSubject.where(subject: subject, course: course).first
  end
end