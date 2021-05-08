class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.datetime :purchased_at
      t.boolean :processed_order

      t.timestamps
    end
  end
end
