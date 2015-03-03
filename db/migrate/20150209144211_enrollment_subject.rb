class EnrollmentSubject < ActiveRecord::Migration
  def change
    create_table :enrollment_subjects do |t|
      t.references :course, index: true
      t.references :user, index: true
      t.references :courses_subject, index: true
      t.references :enrollment, index: true

      t.timestamps
    end
  end
end
