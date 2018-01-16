class SaleMembership < ActiveRecord::Base
  belongs_to :sale
  belongs_to :client
  belongs_to :membership

  after_save :subtotal_membresia

  has_many :subscription , dependent: :destroy
  
  def subtotal_membresia
    var = 0
    var = self.membership.total * self.quantity
    self.update_columns(precio: self.membership.total , subtotal: var )   
  end
end
