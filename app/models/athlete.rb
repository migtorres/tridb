class Athlete < ActiveRecord::Base
  has_many :segment_results
  has_many :team_years
  belongs_to :locations
  belongs_to :teams
end
