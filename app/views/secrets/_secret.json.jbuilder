json.extract! secret, :id, :title, :content, :created_at, :updated_at
json.url secret_url(secret, format: :json)
