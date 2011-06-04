class Product < ActiveRecord::Base
  has_many :product_variants, :dependent => :destroy
  has_many :items, :through => :product_variants
  has_one :product_group

  accepts_nested_attributes_for :items

  validates_presence_of :name, :description, :cents
  validate  :check_item_count


  private
  def check_item_count
    if items.first.nil?
      errors.add(:product_variant,"A Product must have at least one item")
    end
  end
end

