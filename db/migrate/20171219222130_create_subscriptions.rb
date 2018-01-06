class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :client, index: true, foreign_key: true
      t.date :start_time
      t.date :end_time
      t.references :service, index: true, foreign_key: true
      t.references :membership, index: true, foreign_key: true
      t.integer :total_entries
      t.integer :current_entries
      t.string :estado
      

      t.timestamps null: false
    end
  end
end
