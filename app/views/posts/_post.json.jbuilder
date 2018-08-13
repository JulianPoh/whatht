json.extract! post, :id, :title, :category, :body, :image, :created_at, :updated_at
json.url post_url(post, format: :json)
