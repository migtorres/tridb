class TeamYear < ActiveRecord::Base
  belongs_to :athletes
  belongs_to :teams
end
