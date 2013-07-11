json.array!(@races) do |race|
  json.extract! race, :location_id, :type_id, :name, :date, :competition_id, :sport_id, :global_race_id
  json.url race_url(race, format: :json)
end
