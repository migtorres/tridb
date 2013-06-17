class Athlete < ActiveRecord::Base
  attr_accessible :birth_date, :country_iso, :email, :facebook, :ftp_license, :ftp_number, :full_name, :name, :place_id, :team_id, :twitter, :url
  belongs_to :team
  belongs_to :location
  has_many :triathlon_results, :primary_key => "ftp_license"
  has_many :triathlon_races, :through => :triathlon_results
end
