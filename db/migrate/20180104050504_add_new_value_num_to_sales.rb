class AddNewValueNumToSales < ActiveRecord::Migration
  def change
    add_column :sales, :numero, :string
  end
end
