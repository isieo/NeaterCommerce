class CreateItemApis < ActiveRecord::Migration
  def self.up
    create_table :item_apis do |t|
      t.string :name
      t.string :api_class_name
      t.text :options

      t.timestamps
    end
  end

  def self.down
    drop_table :item_apis
  end
end
