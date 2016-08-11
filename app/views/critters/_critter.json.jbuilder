json.extract! critter, :id, :name, :age, :date_last_seen, :color, :has_collar, :created_at, :updated_at
json.url critter_url(critter, format: :json)