# == Schema Information
#
# Table name: sales
#
#  id             :integer          not null, primary key
#  date           :date
#  client_id      :integer
#  user_id        :integer
#  subtotal       :decimal(, )
#  iva            :decimal(, )
#  total          :decimal(, )
#  nota           :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  total_efectivo :decimal(, )
#  total_tarjeta  :decimal(, )
#  total_cheque   :decimal(, )
#

class Sale < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  
  has_many :sale_detail , dependent: :destroy
  accepts_nested_attributes_for :sale_detail, :allow_destroy => true
  
  has_many :sale_membership , dependent: :destroy
  accepts_nested_attributes_for :sale_membership, :allow_destroy => true
  

  validates :numero, presence: true, uniqueness: true, length: {:minimum => 11}
  validates :client_id , presence: true
  validates :date , presence: true 

  #cattr_accessor :current_user
  
  #before_save :validacionproducto
  
  
  after_save :totales
  #after_save :mensaje_inventario

  

  #after_update :totales
  





  def totales
    subtotalfac=0.0
    ivafact=0.0
    totalfact=0.0
    if self.sale_detail.any?
      self.sale_detail.each do |sale_detail|
        subtotalfac = subtotalfac + sale_detail.subtotal
        if self.client.name == "consumidor final"
          ivafact = 0.0
        else
          ivafact = subtotalfac  * 0.12
        end
        
        totalfact = subtotalfac + ivafact
      end
    end

    if self.sale_membership.any?
      self.sale_membership.each do |sale_membership|
        subtotalfac = subtotalfac + sale_membership.subtotal
        if self.client.name == "consumidor final"
          ivafact = 0.0
        else
          ivafact = subtotalfac  * 0.12
        end
        
        totalfact = subtotalfac + ivafact
      end      
    end
    self.update_columns(subtotal: subtotalfac , iva: ivafact , total: totalfact, user_id: :current_admin)
  end



  def mensaje_inventario
     if self.product.quantity <= self.product.minimun_quantity
            
     end
  end



end
