class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :firstname
      t.string :lastname
      t.string :login
      t.string :password
      t.integer :specialty_id

      t.timestamps
    end
  end
end
