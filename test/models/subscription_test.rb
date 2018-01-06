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

require 'test_helper'

class SubscriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
