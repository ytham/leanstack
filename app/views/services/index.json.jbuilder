json.array!(@services) do |service|
  json.extract! service, :cluster_id, :stackup_id, :name, :imageUrl, :description
  json.url service_url(service, format: :json)
end
