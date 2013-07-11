class Competition < ActiveRecord::Base
  belongs_to :sports
  has_many :races
end
