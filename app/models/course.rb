class Course < ActiveRecord::Base
  has_many :courses_subjects, dependent: :destroy
  has_many :subjects, through: :courses_subjects
  has_many :enrollments, dependent: :destroy, autosave: true
  has_many :users, through: :enrollments
  has_many :enrollment_subjects, dependent: :destroy, autosave: true

  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 255}
  
  accepts_nested_attributes_for :courses_subjects, allow_destroy: true
  accepts_nested_attributes_for :users, allow_destroy: true

  scope :attending_courses, ->{includes(:enrollments).where(enrollments: {status: [0, 1]})}
  scope :attended_courses, ->{includes(:enrollments).where(enrollments: {status: 2})}
end
