ActiveAdmin.register ClassRegistration do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :client_id, :id_client,:email,:phone,:subscription_id,:expiration_date,:message,:present,:estado
	

	form do |f|
	  f.inputs "Registro de clases" do
	    columns do
	    	column{f.input :client}
	    end
	  end
     f.actions
	end

end
