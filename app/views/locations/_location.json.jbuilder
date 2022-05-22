json.extract! location, :id, :name, :longitude, :latitude, :street, :city, :state, :created_at, :updated_at
json.url location_url(location, format: :json)
