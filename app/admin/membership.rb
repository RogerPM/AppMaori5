ActiveAdmin.register Membership do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :service_id, :name, :sessions, :value, :discount, :total, :estado,:tipo, :type_duration,:quantity_date,:days
menu parent: "Operaciones", label: 'Membresias'



index do
    selectable_column
    column "Servicio", :service
    column "Descripcion", :name
    column "Sesiones", :sessions
    column "Valor", :value,:sortable => :value do |membership|
        div :class => "value" do
            number_to_currency membership.value
        end
    end
    column "Descuento", :discount
    column "Total", :total,:sortable => :total do |membership|
        div :class => "total" do
            number_to_currency membership.total
        end
    end
    column "Duracion" do |membership|
    	"#{membership.quantity_date.to_s} #{membership.type_duration}" 
    end	
    column "Tipo", :tipo
    actions
end

  show  do
   columns do
    column do
     panel "Membrecia"  do
       attributes_table do
        row "Descripcion",:sortable => :name do |membership|
          div :class => "name" do
              membership.name
          end
        end
        row "Sesiones",:sortable => :sessions do |membership|
          div :class => "sessions" do
              membership.sessions
          end
        end
        row :service
        row :value,:sortable => :value do |membership|
          div :class => "value" do
              number_to_currency membership.value
          end
        end
        row "Descuento",:sortable => :discount do |membership|
          div :class => "discount" do
              membership.discount
          end
        end
        row "Total",:sortable => :total do |membership|
          div :class => "total" do
              number_to_currency membership.total
          end
        end
        row :tipo
        row "Duracion",:sortable => :type_duration do |membership|
          div :class => "type_duration" do
              "#{membership.quantity_date.to_s} #{membership.type_duration}" 
          end
        end
        row :estado
        if can? :roles_usuario, @user
            row :created_at
            row :updated_at
        end 
        end
      end   
     end 
    end
    active_admin_comments
   end


	form do |f|
		f.inputs "Membresias" do
		f.input :service, :label => "Servicio"
        f.input :name, :label => "Descripcion del precio"
		f.input :sessions, :label => "Numero de sesiones", :min => 1	
		f.input :value, :label => "Precio", :min => 0
		f.input :discount, :label => "Descuento", :min => 0


		f.inputs "Duracion" do
			f.input :quantity_date, :label => "Cantidad", :min => 1
			f.input :type_duration, :label => "Tipo", as: :select, :collection => [ ["Dias","Dias"],["Semanas", "Semanas"],["Meses", "Meses"],["Años", "Años"]]
			f.input :tipo, :label => "Tipo de entrada", as: :select, :collection => [ ["Por entrada","entrada"],["Por dia", "diario"]]
		end

		#if !f.object.new_record?
		f.inputs "Precio " do
		 f.input :total, :label => "Total"
		end
				
		#end
		
		f.input :estado, :label => "Estado"
			f.actions
		end

	end

end
