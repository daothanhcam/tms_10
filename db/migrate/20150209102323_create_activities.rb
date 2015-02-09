class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :content
      t.string :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
