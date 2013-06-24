class TriathlonResults < ActiveRecord::Base
  attr_accessible :cycling_place, :cycling_time, :difference, :ftp_license, :ftp_number, :place, :running_place, :running_time, :swimming_place, :swimming_time, :total_time, :transition_first_time, :transition_one_place, :transition_two_place, :transition_two_time, :triathlon_race_id
end
