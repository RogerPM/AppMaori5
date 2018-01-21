class AddNewsValuesToMembership < ActiveRecord::Migration
  def change
    add_column :memberships, :days, :integer
    add_column :memberships, :type_duration, :string
    add_column :memberships, :quantity_date, :integer
  end
end
