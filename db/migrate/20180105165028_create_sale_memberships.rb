class CreateSaleMemberships < ActiveRecord::Migration
  def change
    create_table :sale_memberships do |t|
      t.references :sale, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.references :membership, index: true, foreign_key: true
      t.decimal :precio
      t.integer :quantity
      t.decimal :subtotal

      t.timestamps null: false
    end
  end
end
