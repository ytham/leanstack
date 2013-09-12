json.array!(@stackups) do |stackup|
  json.extract! stackup, 
  json.url stackup_url(stackup, format: :json)
end
