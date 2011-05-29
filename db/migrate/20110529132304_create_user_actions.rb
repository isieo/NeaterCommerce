class CreateUserActions < ActiveRecord::Migration
  def self.up
    create_table :user_actions do |t|
      t.references :user
      t.string :action
      t.text :data

      t.timestamps
    end
  end

  def self.down
    drop_table :user_actions
  end
end
