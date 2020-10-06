json.extract! video, :id, :title, :content, :url, :views_count, :created_at, :updated_at
json.url video_url(video, format: :json)
