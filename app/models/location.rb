class Location < ActiveRecord::Base
  attr_accessible :continent, :country, :lat, :lon, :municipality, :parish, :region1, :region2
end
