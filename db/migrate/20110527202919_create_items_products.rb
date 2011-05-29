class CreateItemsProducts < ActiveRecord::Migration
  def self.up
    create_table :items_products, :id => false do |t|
      t.references :item, :null => false
      t.references :product, :null => false
    end
  end

  def self.down
    drop_table :items_products
  end
end
