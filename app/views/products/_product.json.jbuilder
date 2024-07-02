json.extract! product, :id, :name, :sku, :price, :user_id_id, :is_active, :size, :size_measurment, :stock, :on_sale, :created_at, :updated_at
json.url product_url(product, format: :json)
