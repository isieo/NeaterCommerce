Factory.define :item do |f|
  f.sequence(:name) { |n| "Pencil#{n}" }
  f.description "Pencil that draws nicely"
  f.sku "kk02431"
  f.count_on_hand "999"
  f.cost_in_cents "1000"
  #f.type "PhysicalItem"
end


Factory.define :product do |f|
  f.sequence(:name) { |n| "Product Set #{n}" }
  f.description "Product that draws nicely"
  f.cents "1000"
end

Factory.define :product_with_items, :parent => :item do |f|
  f.after_create { |p| Factory(:item, :product => p) }
end


Factory.define :product_variant do |f|
  f.association(:item)
  f.association(:product)
  f.master 0
end

