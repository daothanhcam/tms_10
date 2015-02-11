class AddStatusToEnrollmentSubject < ActiveRecord::Migration
  def change
    add_column :enrollment_subjects, :status, :integer, :limit => 4
  end
end
