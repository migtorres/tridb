class Team < ActiveRecord::Base
  has_many :athletes
  has_many :team_years
end
