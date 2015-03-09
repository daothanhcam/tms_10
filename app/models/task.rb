class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  has_many :enrollment_tasks, dependent: :destroy
  
  validates :name, presence: true
end
