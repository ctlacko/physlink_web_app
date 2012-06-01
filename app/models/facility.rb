class Facility < ActiveRecord::Base
  attr_accessible :name, :physician_id
end
