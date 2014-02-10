json.array!(@days) do |day|
  json.extract! day, :id, :favorite
  json.url day_url(day, format: :json)
end
