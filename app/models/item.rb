class Item < ActiveRecord::Base
  has_and_belongs_to_many :products
  has_one :item_api
end
