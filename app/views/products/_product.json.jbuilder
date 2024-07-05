json.extract! product, :id, :name, :description, :price, :stock, :size, :size_measurment, :sku, :is_active, :on_sale, :catagory_id, :created_at, :updated_at
json.url product_url(product, format: :json)
