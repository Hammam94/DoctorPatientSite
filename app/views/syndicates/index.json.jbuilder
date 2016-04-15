json.array!(@syndicates) do |syndicate|
  json.extract! syndicate, :id, :name
  json.url syndicate_url(syndicate, format: :json)
end
