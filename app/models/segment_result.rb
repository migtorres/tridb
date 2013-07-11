class SegmentResult < ActiveRecord::Base
  belongs_to :segments
  belongs_to :athletes
  belongs_to :age_groups
  belongs_to :age_category
end
