ActiveAdmin.register User do
  permit_params :name,:last_name,:identification_card,:address,:birthday,:phone,:contract_date,:contract_date_end,:position,:state,:email, :password, :password_confirmation

  menu parent: "Personas", label: 'Usuarios'

  index do
    selectable_column
    id_column
    column "Nombres",:name
    column "Apellidos",:last_name
    column "Cedula",:identification_card
    column :email
    column "Direccion",:address
    column "Telefono",:phone
    column "Ultima conexión",:current_sign_in_at
    column "Creado el",:created_at
    actions
  end

  filter :email
  filter :name
  filter :last_name
  filter :phone

  form do |f|
    f.inputs do
      f.input :name
      f.input :last_name
      f.input :identification_card
      f.input :address
      f.input :phone
      f.input :contract_date
      f.input :contract_date_end
      f.input :position
      f.input :state
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
