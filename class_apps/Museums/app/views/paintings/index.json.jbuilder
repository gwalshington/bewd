json.array!(@paintings) do |painting|
  json.extract! painting, :id, :title, :year, :style, :image, :artist_id, :museum_id
  json.url painting_url(painting, format: :json)
end
