json.extract! subscription, :id, :client_id, :start_time, :end_time, :service_id, :membership_id, :total_entries, :current_entries, :type, :state, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
