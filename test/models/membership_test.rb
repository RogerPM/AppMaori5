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

require 'test_helper'

class MembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
