class Location < ActiveRecord::Base
  has_many :races
  has_many :athletes
end
