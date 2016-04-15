json.array!(@phones) do |phone|
  json.extract! phone, :id, :phone_number, :treatment_center_id
  json.url phone_url(phone, format: :json)
end
