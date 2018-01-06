ActiveAdmin.register SaleDetail do


	permit_params :sale_id,:product_id ,:precio, :quantity ,:subtotal
	menu parent: "Punto de venta", label: 'Detalles de ventas'

end
