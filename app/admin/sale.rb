ActiveAdmin.register Sale do

permit_params :numero,:date,:client_id,:user_id,:subtotal,:iva,:total,:nota,sale_detail_attributes: [:id,:sale,:product_id,:precio,:quantity,:subtotal,:_destroy], sale_membership_attributes: [:id,:sale,:membership_id,:precio,:quantity,:subtotal,:_destroy]

menu parent: "Punto de venta", label: 'Ventas'

  index do
    selectable_column
    column "Numero Factura", :numero
    column "Fecha",:date
    column "Cliente",:client
    column "Usuario",:user_id
    column :subtotal,:sortable => :subtotal do |sale|
        div :class => "subtotal" do
            number_to_currency sale.subtotal
        end
    end
    column :iva,:sortable => :iva do |sale|
        div :class => "iva" do
            number_to_currency sale.iva
        end
    end
    column :total,:sortable => :total do |sale|
        div :class => "total" do
            number_to_currency sale.total
        end
    end
    actions
  end

  show  do

    attributes_table  do

      row :date
      row :numero
      row :client
      row :user
      row :subtotal,:sortable => :subtotal do |sale|
        div :class => "subtotal" do
            number_to_currency sale.subtotal
        end
      end
      row :iva,:sortable => :iva do |sale|
        div :class => "iva" do
            number_to_currency sale.iva
        end
      end
      row :total,:sortable => :total do |sale|
        div :class => "total" do
            number_to_currency sale.total
        end
      end
      row :total_efectivo,:sortable => :total_efectivo do |sale|
        div :class => "total_efectivo" do
            number_to_currency sale.total_efectivo
        end
      end
      row :total_tarjeta,:sortable => :total_tarjeta do |sale|
        div :class => "total_tarjeta" do
            number_to_currency sale.total_tarjeta
        end
      end
      row :total_cheque,:sortable => :total_cheque do |sale|
        div :class => "total_cheque" do
            number_to_currency sale.total_cheque
        end
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end


	form do |f|
		f.inputs "Nueva Factura" do
      columns do
      column{
		f.input :date, :label => "Fecha",as: :date_time_picker,
                         picker_options: {
                           min_date: Date.current - 1.days,
                           allow_times: [
                             '12:10', '13:10', '15:10',
                             '17:10', '18:10', '19:10'
                           ],timepicker: false
                         }}
    column{f.input :numero, :label => "Numero"}
    end

    f.input :client
    


    if f.object.new_record?
    columns do
    column{
     f.inputs do 
         f.has_many :sale_detail, heading: 'Detalle Productos',:allow_destroy => true,new_record: 'Agregar'  do |a|
          
           #a.input :tipo, as: :selectize, :collection => [ ["producto","producto"],["subcripcion", "subcripcion"]], input_html: {class: "tipo_detalle" }
            #a.input :tipo, as: :selected_list
            a.input :product, :label => "Producto"
            a.input :quantity, :min => 1
          end      
        end}
        column{
          f.inputs do 
          f.has_many :sale_membership, heading: 'Detall Membresias',:allow_destroy => true,new_record: 'Agregar'  do |b|
            b.input :membership, :label => "Membresia"
            b.input :client, :label => "Cliente"
            b.input :quantity, :min => 1
          end      
        end


        }
      end
    end
      

			if !f.object.new_record?
				f.inputs "Valor a pagar" do\
        f.input :subtotal, :label => "Subtotal",input_html: { readonly: true, disabled: true }
        f.input :iva, :label => "Iva",input_html: { readonly: true, disabled: true }
				f.input :total, :label => "Total a pagar",input_html: { readonly: true, disabled: true }

        columns do
        column{
				f.input :total_efectivo, :label => "Efectivo", :min => 0}
        column{
				f.input :total_tarjeta, :label => "Tarjeta", :min => 0}
        column{
				f.input :total_cheque, :label => "Cheque", :min => 0}
        end

				end
				f.input :nota,:label => "Observaciones"
			end

			f.actions
		end

	end



end
