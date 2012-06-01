class CreateCaseprocedures < ActiveRecord::Migration
  def change
    create_table :caseprocedures do |t|
      t.string :laterality
      t.string :volume
      t.integer :patient_case_id
      t.integer :procedure_id

      t.timestamps
    end
  end
end
