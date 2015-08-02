json.array!(@resources) do |resource|
  json.extract! resource, :id, :resource, :genre, :url, :state_id, :municipality_id, :department_id
  json.url resource_url(resource, format: :json)
end
