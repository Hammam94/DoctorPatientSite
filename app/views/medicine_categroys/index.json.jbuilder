json.array!(@medicine_categroys) do |medicine_categroy|
  json.extract! medicine_categroy, :id, :name
  json.url medicine_categroy_url(medicine_categroy, format: :json)
end
