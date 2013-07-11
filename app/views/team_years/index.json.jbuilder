json.array!(@team_years) do |team_year|
  json.extract! team_year, :athlete_id, :team_id, :year
  json.url team_year_url(team_year, format: :json)
end
