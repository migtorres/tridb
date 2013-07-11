class Segment < ActiveRecord::Base
  has_many :segment_results
  belongs_to :races
  belongs_to :sports
end
