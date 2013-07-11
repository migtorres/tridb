class Race < ActiveRecord::Base
  belongs_to :locations
  belongs_to :competitions
  belongs_to :sports
  belongs_to :race_types
  belongs_to :global_races
  has_many :segments
  has_many :results
end
