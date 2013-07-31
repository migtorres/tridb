class Sport < ActiveRecord::Base
  has_many :segments
  has_many :races
  has_many :competitions
  has_many :race_types
end
