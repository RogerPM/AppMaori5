class AddNewValueToSaleDetail < ActiveRecord::Migration
  def change
    add_column :sale_details, :tipo, :string
  end
end
