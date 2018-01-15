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

    show  do
    attributes_table  do

      row "Nombres",:name,:sortable => :name do |provider|
        div :class => "name" do
            provider.name
        end
      end 
      row "Ruc",:ruc,:sortable => :ruc do |provider|
        div :class => "ruc" do
            provider.ruc
        end
      end
      row "Telefono",:phone,:sortable => :phone do |provider|
        div :class => "phone" do
            provider.phone
        end
      end
      row :email
      row "Direccion",:address,:sortable => :address do |provider|
        div :class => "address" do
            provider.address
        end
      end
      row :state
      row :created_at
      row :updated_at
    end
    active_admin_comments
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
