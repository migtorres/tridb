json.array!(@classifications) do |classification|
  json.extract! classification, :name
  json.url classification_url(classification, format: :json)
end
