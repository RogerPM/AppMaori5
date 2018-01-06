# == Schema Information
#
# Table name: clients
#
#  id                  :integer          not null, primary key
#  name                :string
#  last_name           :string
#  identification_card :string
#  gender              :string
#  phone               :string
#  email               :string
#  birthday            :date
#  address             :text
#  country             :string
#  province            :string
#  city                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Client < ActiveRecord::Base

	validates :identification_card, presence: true,:length => { :minimum => 10 }
	validates :name, presence: true
	validates :last_name , presence: true
	validates :phone , presence: true
	validates :email , presence: true
	

end
