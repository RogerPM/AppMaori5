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


  after_create :total_membresia

  def total_membresia

  	total_mem = 0	
  	total_desc = 0
  	if self.discount > 1
  	total_desc = (self.discount/100)*self.value
    else
    total_desc = self.discount*self.value
    end
  	total_mem = self.value - total_desc 
  	self.update_columns(total: total_mem)
  	
  	
  end

end
