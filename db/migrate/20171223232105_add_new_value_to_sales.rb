class AddNewValueToSales < ActiveRecord::Migration
  def change
    add_column :sales, :total_efectivo, :decimal
    add_column :sales, :total_tarjeta, :decimal
    add_column :sales, :total_cheque, :decimal
  end
end
