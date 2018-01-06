# == Schema Information
#
# Table name: providers
#
#  id         :integer          not null, primary key
#  name       :string
#  ruc        :string
#  phone      :string
#  address    :text
#  email      :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Provider < ActiveRecord::Base

	has_many :products
	validates :name , presence: true
	validates :ruc , presence: true
	validates :phone , presence: true
	validates :email , presence: true
	accepts_nested_attributes_for :products, :allow_destroy => true
end
