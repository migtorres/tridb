class TriathlonRace < ActiveRecord::Base
  attr_accessible :competition_id, :cycling_distance, :date, :hour, :location_id, :running_distance, :swimming_distance, :type
end
