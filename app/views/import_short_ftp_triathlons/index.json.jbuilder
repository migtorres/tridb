json.array!(@import_short_ftp_triathlons) do |import_short_ftp_triathlon|
  json.extract! import_short_ftp_triathlon, :place, :ftp_number, :ftp_license, :athlete_name, :pen, :age_group_name, :team, :swimming_position, :swimming_time, :cycling_position, :cycling_time, :running_position, :running_time, :race_time
  json.url import_short_ftp_triathlon_url(import_short_ftp_triathlon, format: :json)
end
