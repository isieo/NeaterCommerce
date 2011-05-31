class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.integer :parent_id
      t.text :description
      t.references :product_group
      t.integer :item_id
      t.integer :cents
      t.boolean :archived

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
