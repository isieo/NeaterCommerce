class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.references :customer
      t.string :number
      t.integer :total
      t.string :payment_state
      t.string :shipping_state
      t.integer :shipping_address_id
      t.integer :billing_address_id

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
