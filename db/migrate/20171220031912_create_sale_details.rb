class CreateSaleDetails < ActiveRecord::Migration
  def change
    create_table :sale_details do |t|
      t.references :sale, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.decimal :precio
      t.integer :quantity
      t.decimal :subtotal

      t.timestamps null: false
    end
  end
end
