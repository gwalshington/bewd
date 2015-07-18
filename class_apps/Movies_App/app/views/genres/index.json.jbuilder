json.array!(@genres) do |genre|
  json.extract! genre, :id, :category
  json.url genre_url(genre, format: :json)
end
