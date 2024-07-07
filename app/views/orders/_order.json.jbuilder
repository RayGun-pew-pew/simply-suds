json.extract! order, :id, :shopper_id, :purchased, :shipped, :date_shipped, :created_at, :updated_at
json.url order_url(order, format: :json)
