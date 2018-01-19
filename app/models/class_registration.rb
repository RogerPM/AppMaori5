class ClassRegistration < ActiveRecord::Base
  belongs_to :client
  belongs_to :subscription

  validates :client, presence: true


  before_create :registro_clases

  def registro_clases
  	t1= Time.now.strftime("%d%m%Y")
  	aux = 0
  	self.client.subscription.each do |subscription|
  		if subscription.estado == "Activo"

  			self.id_client = self.client.identification_card
  			self.email = self.client.email
  			self.phone = self.client.phone
  			self.subscription = subscription
  			self.expiration_date = subscription.end_time
  			#t1 = subscription.end_time.strftime("%d%m%Y")
  			#aux = t1
  			#if aux > 0
  			#	subscription.update_columns(current_entries: aux)
  			#else
  			#	subscription.update_columns(current_entries: aux,estado: false)
  			#end

  			
  			#self.update_columns(id_client: self.client.identification_card , email: self.client.email, phone: self.client.phone,expiration_date: subscription.end_time)
  		end
  	
  	end
  end


end
