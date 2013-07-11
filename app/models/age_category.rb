class AgeCategory < ActiveRecord::Base
  has_many :results
  has_many :segment_results
end
