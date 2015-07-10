json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :nationality, :dob, :image
  json.url artist_url(artist, format: :json)
end
