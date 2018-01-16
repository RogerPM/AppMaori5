class AddSaleMembershipToSubscription < ActiveRecord::Migration
  def change
    add_reference :subscriptions, :sale_membership, index: true, foreign_key: true
  end
end
