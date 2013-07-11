json.array!(@teams) do |team|
  json.extract! team, :name, :location_id, :site, :facebook, :twitter
  json.url team_url(team, format: :json)
end
