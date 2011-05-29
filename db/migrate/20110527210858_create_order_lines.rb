class CreateOrderLines < ActiveRecord::Migration
  def self.up
    create_table :order_lines do |t|
      t.references :order
      t.references :product
      t.integer :quantity
      t.integer :price
      t.integer :row_number

      t.timestamps
    end
  end

  def self.down
    drop_table :order_lines
  end
end
