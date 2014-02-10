json.array!(@graces) do |grace|
  json.extract! grace, :id, :description
  json.url grace_url(grace, format: :json)
end
