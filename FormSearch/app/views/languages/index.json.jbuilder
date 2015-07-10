json.array!(@languages) do |language|
  json.extract! language, :id, :language
  json.url language_url(language, format: :json)
end
