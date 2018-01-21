# == Schema Information
#
# Table name: subscriptions
#
#  id              :integer          not null, primary key
#  client_id       :integer
#  start_time      :date
#  end_time        :date
#  service_id      :integer
#  membership_id   :integer
#  total_entries   :integer
#  current_entries :integer
#  type            :string
#  state           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Subscription < ActiveRecord::Base
  belongs_to :client
  belongs_to :service
  belongs_to :membership
  belongs_to :sale_membership

 def actualizacion_subscripciones
	 Subscription.all.each do |subscription|
  	 if subscription.estado == "Activo"
  		if subscription.membership.tipo == "diario"
  		   subscription.current_entries = subscription.current_entries - 1
  			if subscription.current_entries == 0
  				subscription.estado = "Inactivo"
  			end
  			subscription.save
  		end	
  	  end
  	end
  end

end
