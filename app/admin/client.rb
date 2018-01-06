ActiveAdmin.register Client do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name,:last_name,:identification_card,:gender,:phone,:email,:address,:country,:province,:city
 menu parent: "Personas", label: 'Clientes'


  filter :email
  filter :name
  filter :last_name
  filter :phone

   index do
    selectable_column
    id_column
    column :name
    column :last_name
    column :identification_card
    column :gender
    column :email
    column :address
    column :phone
    actions
  end

    form do |f|
    f.inputs "Nuevo cliente" do
      f.input :name, :label => "Nombre"
      f.input :last_name, :label => "Apellidos"
      f.input :identification_card, :label => "Cedula"
      f.input :gender,:label => "Genero", as: :select, :collection => [["femenino","femenino"], ["masculino","masculino"],["otro", "otro"]]
      f.input :phone, :label => "telefono"
      f.input :address, :label => "Direccion"
      f.input :email, :label => "Email"
      f.input :country, :label => "Pais", input_html: { class: "default-select" }
      f.input :province, :label => "Provincia"
      f.input :city, :label => "Ciudad"
    end
    f.actions
  end

end
