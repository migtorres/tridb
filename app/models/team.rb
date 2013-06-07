class Team < ActiveRecord::Base
  attr_accessible :address, :city_id, :country_iso, :facebook, :location_id, :name, :site
end
