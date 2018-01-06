# == Schema Information
#
# Table name: sale_details
#
#  id         :integer          not null, primary key
#  sale_id    :integer
#  product_id :integer
#  precio     :decimal(, )
#  quantity   :integer
#  subtotal   :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SaleDetail < ActiveRecord::Base
  belongs_to :sale
  belongs_to :product

  
  after_save :update_detail
  after_save :subtotal_generado
  #before_save :validacionproducto

  def update_detail
    aux = 0
    aux = self.product.quantity-self.quantity
    self.product.update_columns(quantity: aux)  
  end

  def subtotal_generado
    var = 0.0
    var = self.product.sale_price * self.quantity
    self.update_columns(precio: self.product.sale_price , subtotal: var )   
  end

  def validacionproducto
      if self.product.quantity < 0
           self.destroy  
      end    
  end


end
