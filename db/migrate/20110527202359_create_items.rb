class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :sku
      t.integer :count_on_hand
      t.integer :cost_in_cents
      t.string :type
      t.integer :width
      t.integer :height
      t.boolean :master
      t.references :item_api
      
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
