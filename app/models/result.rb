class Result < ActiveRecord::Base
  belongs_to :races
  belongs_to :athletes
  belongs_to :classification
  belongs_to :age_group
  belongs_to :age_category
end
