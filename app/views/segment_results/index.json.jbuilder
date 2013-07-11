json.array!(@segment_results) do |segment_result|
  json.extract! segment_result, :athlete_id, :segment_id, :place, :time, :age_group_id, :class_id
  json.url segment_result_url(segment_result, format: :json)
end
