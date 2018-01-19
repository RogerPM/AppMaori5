class CreateClassRegistrations < ActiveRecord::Migration
  def change
    create_table :class_registrations do |t|
      t.references :client, index: true, foreign_key: true
      t.string :id_client
      t.string :email
      t.string :phone
      t.references :subscription, index: true, foreign_key: true
      t.date :expiration_date
      t.string :message
      t.boolean :present
      t.string :estado

      t.timestamps null: false
    end
  end
end
