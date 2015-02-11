class AddStatusToEnrollment < ActiveRecord::Migration
  def change
    add_column :enrollments, :status, :integer, :limit => 4
  end
end
