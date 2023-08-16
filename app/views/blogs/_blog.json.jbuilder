json.extract! blog, :id, :title, :user_id, :time_of_read, :category, :created_at, :updated_at
json.url blog_url(blog, format: :json)
