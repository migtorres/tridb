json.array!(@athletes) do |athlete|
  json.extract! athlete, :ftp_number, :ftp_license, :name, :full_name, :birth_date, :team_id, :location_id, :email, :facebook, :twitter, :url, :gender, :nationality
  json.url athlete_url(athlete, format: :json)
end
