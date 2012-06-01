class Caseprocedure < ActiveRecord::Base
  attr_accessible :laterality, :patient_case_id, :procedure_id, :volume
end
