json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :description, :genre_id
  json.url movie_url(movie, format: :json)
end
