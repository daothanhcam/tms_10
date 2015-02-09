class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :content
      t.string :type
      t.references :user, index: true

      t.timestamps
    end
  end
end
