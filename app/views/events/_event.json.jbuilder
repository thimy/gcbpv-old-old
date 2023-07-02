json.extract! event, :id, :name, :content, :start_date, :end_date, :address_first, :address_second, :street, :city, :created_at, :updated_at
json.url event_url(event, format: :json)
