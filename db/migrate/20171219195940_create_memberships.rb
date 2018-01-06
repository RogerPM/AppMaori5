class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :name
      t.integer :sessions
      t.references :service, index: true, foreign_key: true
      t.decimal :value
      t.decimal :discount
      t.decimal :total
      t.string  :tipo
      t.boolean :estado

      t.timestamps null: false
    end
  end
end
