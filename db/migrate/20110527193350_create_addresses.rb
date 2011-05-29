class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.references :customer
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.references :state
      t.string :zip_code
      t.references :country
      t.string :phone
      t.string :state_name
      t.boolean :archived
      t.datetime :archived_at

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
