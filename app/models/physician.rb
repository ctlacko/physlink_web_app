class Physician < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :login, :password, :specialty_id
end
