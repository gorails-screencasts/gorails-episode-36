json.array!(@films) do |film|
  json.extract! film, :id, :title, :description, :image_url
  json.url film_url(film, format: :json)
end
