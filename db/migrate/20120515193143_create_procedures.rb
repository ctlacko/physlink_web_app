class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :name
      t.integer :specialty_id

      t.timestamps
    end
  end
end
