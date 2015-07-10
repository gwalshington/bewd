json.array!(@classifieds) do |classified|
  json.extract! classified, :id, :title, :description, :price, :category_id, :user_id
  json.url classified_url(classified, format: :json)
end
