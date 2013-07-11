json.array!(@competitions) do |competition|
  json.extract! competition, :sport_id, :name
  json.url competition_url(competition, format: :json)
end
