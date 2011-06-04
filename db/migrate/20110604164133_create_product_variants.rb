class CreateProductVariants < ActiveRecord::Migration
  def self.up
    create_table :product_variants do |t|
      t.integer :item_id
      t.integer :product_id
      t.boolean :master

      t.timestamps
    end
  end

  def self.down
    drop_table :product_variants
  end
end
