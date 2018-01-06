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

require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
