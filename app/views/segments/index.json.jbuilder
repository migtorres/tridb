json.array!(@segments) do |segment|
  json.extract! segment, :race_id, :sport_id, :order, :the_geom, :distance
  json.url segment_url(segment, format: :json)
end
