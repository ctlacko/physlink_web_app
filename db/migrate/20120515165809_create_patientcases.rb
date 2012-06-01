class CreatePatientcases < ActiveRecord::Migration
  def change
    create_table :patientcases do |t|
      t.date :procedure_date
      t.time :procedure_time
      t.integer :facility_id
      t.string :firstname
      t.string :lastname
      t.date :dob
      t.string :payment
      t.string :dictation
      t.string :followup
      t.integer :physician_id
      t.integer :id
      t.integer :procedure_id
      t.integer :age

      t.timestamps
    end
  end
end
