class Patientcase < ActiveRecord::Base
  attr_accessible :age, :dictation, :dob, :facility_id, :firstname, :followup, :id, :lastname, :payment, :physician_id, :procedure_date, :procedure_id, :procedure_time

	
end
