class Sport < ActiveRecord::Base
  has_many :segments
  has_many :races
  has_many :copetitions
end
