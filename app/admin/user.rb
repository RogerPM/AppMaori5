ActiveAdmin.register User do
  permit_params :id,:name,:last_name,:identification_card,:address,:birthday,:phone,:contract_date,:contract_date_end,:position,:state,:email, :password, :password_confirmation

  menu parent: "Personas", label: 'Usuarios'

  index do
    if can? :roles_usuario, @user
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
  end

  filter :email
  filter :name
  filter :last_name
  filter :phone

  form do |f|
    f.inputs do
      f.input :name, :label => "Nombre"
      f.input :last_name, :label => "Apellidos"
      f.input :identification_card, :label => "Cedula"
      f.input :address, :label => "Direccion"
      f.input :phone, :label => "Telefono"
      f.input :contract_date, :label => "Fecha de Contratacion"
      f.input :contract_date_end, :label => "Fecha de renuncia"
      f.input :position, :label => "Cargo", as: :selectize, :collection => [ ["Administrador","admin"],["Cajero","saler"],["Entrenador","coach"]]
      
      f.input :email, :label => "Email"
      f.input :password, :label => "Contraseña"
      f.input :password_confirmation, :label => "Confirmar contraseña"
      f.input :state, :label => "Cuenta", as: :selectize, :collection => [ ["Activa",1],["Inactiva",0]]
    end
    f.actions
  end

end
