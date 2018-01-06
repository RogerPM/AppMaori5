class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :name
      t.decimal :purchase_price
      t.decimal :sale_price
      t.integer :quantity
      t.integer :minimun_quantity
      t.decimal :gain
      t.references :provider, index: true, foreign_key: true
      t.string :tipo
      t.boolean :estado

      t.timestamps null: false
    end
  end
end
