ActiveAdmin.register Provider do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

permit_params :name,:ruc,:phone,:address,:email,:state
	
menu parent: "Personas", label: 'Proveedores'

  index do
    selectable_column
    id_column
    column "Nombre",:name
    column "ruc",:ruc
    column "Telefono",:phone
    column "Direccion",:address
    column :email

    actions
  end


	form do |f|
		f.inputs "Proveedor" do
			f.input :name, :label => "Nombre"
			f.input :ruc, :label => "Ruc"
			f.input :phone, :label => "Telefono"
			f.input :email,:label => "Correo"
			f.input :address, :label => "Direccion"
			f.actions
		end

	end

end
