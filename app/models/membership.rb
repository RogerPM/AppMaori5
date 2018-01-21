# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  rate_name  :string
#  sessions   :integer
#  service_id :integer
#  value      :decimal(, )
#  discount   :decimal(, )
#  total      :decimal(, )
#  state      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Membership < ActiveRecord::Base
  belongs_to :service 
  validates :name , presence: true
  validates :sessions , presence: true
  validates :service_id , presence: true
  validates :type_duration, presence: true
  validates :quantity_date, presence: true


  after_save :total_membresia
  before_save :duracion_membrecia

  def duracion_membrecia
    if self.quantity_date < 1
      self.quantity_date = 1 
    end
   case self.type_duration
    when "Dias"
      self.days = self.quantity_date * 1
    when "Semanas"
        self.days = self.quantity_date * 7
    when "Meses"
      self.days = self.quantity_date * 30
    else
      self.days = self.quantity_date * 365
    end
  end


  def total_membresia
  	total_mem = 0	
  	total_desc = 0
  	if self.discount.nil?
  	 total_desc = 0*self.value
     self.update_columns(discount: 0)
    else
      if self.discount > 1
        total_desc = (self.discount/100)*self.value
      else
        total_desc = self.discount*self.value
      end
    
    end
  	total_mem = self.value - total_desc 
  	self.update_columns(total: total_mem)
  end

end
