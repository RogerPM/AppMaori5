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

require 'test_helper'

class ProviderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
