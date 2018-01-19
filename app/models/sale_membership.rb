class SaleMembership < ActiveRecord::Base
  belongs_to :sale
  belongs_to :client
  belongs_to :membership

  after_save :subtotal_membresia

  has_many :subscription , dependent: :destroy
  validates :membership, presence: true
  validates :client, presence: true

  def subtotal_membresia
    self.update_columns(precio: self.membership.total , subtotal: var = self.membership.total )   
  end
end
