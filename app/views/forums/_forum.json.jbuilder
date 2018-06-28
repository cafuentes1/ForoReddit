json.extract! forum, :id, :title, :topic, :description, :created_at, :updated_at
json.url forum_url(forum, format: :json)
