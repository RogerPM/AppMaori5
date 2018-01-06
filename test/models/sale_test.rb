# == Schema Information
#
# Table name: sales
#
#  id             :integer          not null, primary key
#  date           :date
#  client_id      :integer
#  user_id        :integer
#  subtotal       :decimal(, )
#  iva            :decimal(, )
#  total          :decimal(, )
#  nota           :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  total_efectivo :decimal(, )
#  total_tarjeta  :decimal(, )
#  total_cheque   :decimal(, )
#

require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
