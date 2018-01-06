json.extract! sale_membership, :id, :sale_id, :client_id, :membership_id, :precio, :quantity, :subtotal, :created_at, :updated_at
json.url sale_membership_url(sale_membership, format: :json)
