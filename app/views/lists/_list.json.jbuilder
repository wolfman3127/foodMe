json.extract! list, :id, :name, :ingredients, :healthy, :username, :email, :created_at, :updated_at
json.url list_url(list, format: :json)
