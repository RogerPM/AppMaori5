ActiveAdmin.register Client do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name,:last_name,:identification_card,:gender,:phone,:email,:address,:country,:province,:city, :birthday
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

    show  do
    attributes_table  do

      row "Nombres",:name,:sortable => :name do |client|
        div :class => "name" do
            client.name
        end
      end 
      row "Apellidos",:last_name,:sortable => :last_name do |client|
        div :class => "last_name" do
            client.last_name
        end
      end
      row "Cedula",:identification_card,:sortable => :identification_card do |client|
        div :class => "identification_card" do
            client.identification_card
        end
      end
      row "Genero",:gender,:sortable => :gender do |client|
        div :class => "gender" do
            client.gender
        end
      end
      row "Telefono",:phone,:sortable => :phone do |client|
        div :class => "phone" do
            client.phone
        end
      end
      row "Fecha de nacimiento",:birthday,:sortable => :birthday do |client|
        div :class => "birthday" do
            client.birthday.strftime("%d/%m/%Y")
        end
      end
      row :email
      row "Direccion",:address,:sortable => :address do |client|
        div :class => "address" do
            client.address
        end
      end
      row "Pais",:country,:sortable => :country do |client|
        div :class => "country" do
            client.country
        end
      end
      row "Provincia",:province,:sortable => :province do |client|
        div :class => "province" do
            client.province
        end
      end
      row "Ciudad",:city,:sortable => :city do |client|
        div :class => "city" do
            client.city
        end
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
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
      f.input :birthday, :label => "Fecha de Nacimiento", as: :date_time_picker,picker_options: {timepicker: false}
      f.input :country, :label => "Pais", input_html: { class: "default-select" }
      f.input :province, :label => "Provincia"
      f.input :city, :label => "Ciudad"
    end
    f.actions
  end

end
