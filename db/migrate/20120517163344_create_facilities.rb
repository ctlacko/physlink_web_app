class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.integer :physician_id

      t.timestamps
    end
  end
end
