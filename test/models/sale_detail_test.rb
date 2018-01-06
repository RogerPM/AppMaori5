# == Schema Information
#
# Table name: sale_details
#
#  id         :integer          not null, primary key
#  sale_id    :integer
#  product_id :integer
#  precio     :decimal(, )
#  quantity   :integer
#  subtotal   :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SaleDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
