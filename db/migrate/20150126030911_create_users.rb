class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :image
      t.integer :role
      t.string :password_digest
      t.string :remember_digest
      t.string :reset_digest
      t.string :activation_digest

      t.timestamps
    end
  end
end
