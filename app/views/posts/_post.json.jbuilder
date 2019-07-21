json.extract! post, :id, :text, :description, :created_at, :updated_at
json.url post_url(post, format: :json)
