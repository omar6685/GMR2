json.extract! product, :id, :title, :title_ar, :description, :description_ar, :image_title, :image_title_ar, :image_description, :image_description_ar, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
