json.array!(@actors) do |actor|
  json.extract! actor, :id, :name
  json.url actor_url(actor, format: :json)
end
