ActiveAdmin.register Membership do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :service_id, :name, :sessions, :value, :discount, :total, :estado,:tipo
menu parent: "Operaciones", label: 'Membresias'

	form do |f|
		f.inputs "Membresias" do
		f.input :service, :label => "Servicio"
        f.input :name, :label => "Descripcion del precio"
		f.input :sessions, :label => "Numero de sesiones", :min => 1	
		f.input :value, :label => "Precio", :min => 0
		f.input :discount, :label => "Descuento", :min => 0
			if !f.object.new_record?
				f.inputs "Valor a pagar" do
				f.input :total, :label => "Total"
				
				end
				
			end
		f.input :tipo, :label => "Tipo", as: :select, :collection => [ ["Por entrada","entrada"],["Por dia", "diario"]]
		f.input :estado, :label => "Estado"
			f.actions
		end

	end

end
