ActiveAdmin.register Subscription do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :client_id,:service_id,:membership_id,:start_time,:end_time,:total_entries,:current_entries,:estado

 menu parent: "Inventario", label: 'Subscripciones'

# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
