class CoursesSubject < ActiveRecord::Base
  belongs_to :course
  belongs_to :subject
  
  def self.getCourseSubject (course,subject)
    CoursesSubject.where(subject: subject, course: course).first
  end
end
