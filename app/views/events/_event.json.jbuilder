json.extract! event, :id, :name, :description, :start_date, :final_date, :created_at, :updated_at
json.url event_url(event, format: :json)
