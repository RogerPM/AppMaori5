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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
