json.extract! sale, :id, :date, :client_id, :user_id, :subtotal, :iva, :total, :nota, :created_at, :updated_at
json.url sale_url(sale, format: :json)
