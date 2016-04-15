json.array!(@treatment_centers) do |treatment_center|
  json.extract! treatment_center, :id, :name, :syndicate_id, :address, :specialization_id, :likes, :dislikes
  json.url treatment_center_url(treatment_center, format: :json)
end
