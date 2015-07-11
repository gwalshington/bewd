json.array!(@forms) do |form|
  json.extract! form, :id, :form_name, :form_link, :municipality_name, :municipality_state, :form_department
  json.url form_url(form, format: :json)
end
