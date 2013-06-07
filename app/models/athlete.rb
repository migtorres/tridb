class Athlete < ActiveRecord::Base
  attr_accessible :birth_date, :country_iso, :email, :facebook, :ftp_license, :ftp_number, :full_name, :name, :place_id, :team_id, :twitter, :url
end
