json.array!(@import_results_from_urls) do |import_results_from_url|
  json.extract! import_results_from_url, :url, :import_type, :quantity
  json.url import_results_from_url_url(import_results_from_url, format: :json)
end
