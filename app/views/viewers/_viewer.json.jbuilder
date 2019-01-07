json.extract! viewer, :id, :name, :last_name, :birth, :telephone, :club, :created_at, :updated_at
json.url viewer_url(viewer, format: :json)
