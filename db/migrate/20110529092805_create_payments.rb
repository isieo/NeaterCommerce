class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.references :order
      t.integer :amount
      t.references :payment_method
      t.string :state
      t.string :response_code
      t.string :avs_response
      t.text :data

      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
