class Product < ActiveRecord::Base
  belongs_to :main_product, :foreign_key => 'parent_id', :class => 'Product'
  has_many :variants, :foreign_key => 'parent_id', :class => 'Product'
  has_one :product_group
end
