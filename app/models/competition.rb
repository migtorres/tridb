class Competition < ActiveRecord::Base
  belongs_to :sports
  has_many :races
  has_many :import_results_from_urls
end
