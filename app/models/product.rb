# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  name             :string
#  purchase_price   :decimal(, )
#  sale_price       :decimal(, )
#  quantity         :integer
#  minimun_quantity :integer
#  gain             :decimal(, )
#  provider_id      :integer
#  type             :string
#  state            :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Product < ActiveRecord::Base
  belongs_to :provider
  validates :name , presence: true
  validates :purchase_price, presence: true
  validates :quantity , presence: true
  validates :minimun_quantity , presence: true



end
