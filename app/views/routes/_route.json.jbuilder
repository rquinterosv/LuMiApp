json.extract! route, :id, :country_id, :region_id, :location, :zone, :name, :grade, :date, :category, :lead_climbing, :observation, :created_at, :updated_at
json.url route_url(route, format: :json)
