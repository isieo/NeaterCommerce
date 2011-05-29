class CreateAddressesCustomers < ActiveRecord::Migration
  def self.up
    create_table :addresses_customers, :id => false do |t|
      t.references :address, :null => false
      t.references :customer, :null => false
    end
  end

  def self.down
    drop_table :addresses_customers
  end
end
