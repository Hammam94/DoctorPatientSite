json.array!(@medicines) do |medicine|
  json.extract! medicine, :id, :name, :material, :concentration, :category_id, :company_id
  json.url medicine_url(medicine, format: :json)
end
