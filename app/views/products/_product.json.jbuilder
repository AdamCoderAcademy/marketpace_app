json.extract! product, :id, :name, :quantity, :price, :farm, :created_at, :updated_at
json.url product_url(product, format: :json)
