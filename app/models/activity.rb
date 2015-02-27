class Activity < ActiveRecord::Base
  belongs_to :user
  belongs_to :cource
  belongs_to :subject
  belongs_to :task
end
