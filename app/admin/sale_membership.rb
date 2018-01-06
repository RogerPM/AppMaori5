ActiveAdmin.register SaleMembership do

permit_params :sale_id,:membership_id, :client_id ,:precio, :quantity ,:subtotal
menu parent: "Punto de venta", label: 'Detalles de membresias'

end
