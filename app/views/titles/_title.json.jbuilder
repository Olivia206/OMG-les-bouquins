json.extract! title, :id, :summary, :quote, :cover, :created_at, :updated_at
json.url title_url(title, format: :json)
