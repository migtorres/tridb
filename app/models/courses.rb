class Courses < ActiveRecord::Base
  attr_accessible :order, :race_id, :sport_id, :the_geom
  belongs_to :triathlon_races
end
