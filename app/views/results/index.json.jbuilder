json.array!(@results) do |result|
  json.extract! result, :race_id, :athlete_id, :classification_id, :place, :time, :age_group_id, :class_id
  json.url result_url(result, format: :json)
end
