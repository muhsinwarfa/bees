json.extract! order, :id, :product_id, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)