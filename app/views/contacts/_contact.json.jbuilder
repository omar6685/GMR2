json.extract! contact, :id, :title, :user_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
