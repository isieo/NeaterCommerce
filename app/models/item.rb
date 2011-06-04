class Item < ActiveRecord::Base
  has_many :product_variants, :dependent => :destroy
  has_many :products, :through => :product_variants
  has_one :item_api
  validates_presence_of :name, :sku, :cost_in_cents
end

