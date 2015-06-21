json.array!(@municipalities) do |municipality|
  json.extract! municipality, :id
  json.url municipality_url(municipality, format: :json)
end
