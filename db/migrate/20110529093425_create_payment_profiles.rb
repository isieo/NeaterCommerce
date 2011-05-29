class CreatePaymentProfiles < ActiveRecord::Migration
  def self.up
    create_table :payment_profiles do |t|
      t.references :customer
      t.references :address
      t.string :payment_cim_id
      t.boolean :active
      t.string :last_digits
      t.string :month
      t.string :year
      t.string :cc_type
      t.string :first_name
      t.string :last_name
      t.string :card_name

      t.timestamps
    end
  end

  def self.down
    drop_table :payment_profiles
  end
end
