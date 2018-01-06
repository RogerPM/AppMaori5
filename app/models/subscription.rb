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

class Subscription < ActiveRecord::Base
  belongs_to :client
  belongs_to :service
  belongs_to :membership



end
