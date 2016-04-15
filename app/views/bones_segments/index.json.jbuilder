json.array!(@bones_segments) do |bones_segment|
  json.extract! bones_segment, :id, :name, :company_id, :description
  json.url bones_segment_url(bones_segment, format: :json)
end
