json.extract! site, :id, :name, :address, :map, :phone, :about, :created_at, :updated_at
json.url site_url(site, format: :json)
