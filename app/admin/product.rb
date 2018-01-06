ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name,:purchase_price,:sale_price,:quantity,:minimun_quantity,:gain,:provider_id,:tipo,:estado
 menu parent: "Inventario", label: 'Productos'

 index do
    selectable_column
    id_column
    column "Descripcion",:name
    column "Precio compra",:purchase_price,:sortable => :purchase_price do |product|
        div :class => "purchase_price" do
            number_to_currency product.purchase_price
        end
    end
    column "Precio venta",:sale_price,:sortable => :sale_price do |product|
        div :class => "sale_price" do
            number_to_currency product.sale_price
        end
    end

    column "Cantidad", :quantity
    column "Cantidad minima",:minimun_quantity
    column "Tipo", :tipo
    column "Estado", :estado
    actions
  end



 	form do |f|
 		f.inputs "Nuevo Producto" do
			f.input :provider, :label => "Proveedor"
 			f.input :name , :label => "Nombre"
 			f.input :purchase_price, :label => "Precio de compra",  :min => 0
 			f.input :sale_price, :label => "Precio de venta", :min => 0
 			f.input :quantity, :label => "Cantidad" , :min => 1
 			f.input :minimun_quantity, :label => "Cantidad minima", :min => 1
            f.input :tipo, :label => "Tipo", as: :select, :collection => [ ["Proteina","proteina"],["Implementos", "inplementos"],["Ropa", "ropa"],["Comida", "comida"],["Bebida", "bebida"]]
            f.input :estado, :label => "Estado", as: :select, :collection => [ ["Habilitado","1"],["Deshabilitado","0"]], input_html: { class: "default-select" }
 		end
 		f.actions
 	end


end
