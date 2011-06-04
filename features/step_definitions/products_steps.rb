Given /^the following products$/ do |products|
  products.hashes.each do |hash|
    Factory(:product, hash)
  end
end

Given /^the following product variants$/ do |product_variants|
  product_variants.hashes.each do |hash|
    Factory(:product_variant, hash)
  end
end

When /^I delete the (\d+)(?:st|nd|rd|th) products$/ do |pos|
  visit products_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following products:$/ do |expected_products_table|
  expected_products_table.diff!(tableish('table tr', 'td,th'))
end

Then /^I should see listing products tabular attributes with name ascending$/ do
  output = tableish('table tr', 'td,th')
  data = output[1]
  data[0].should == 'Writing Equiptment Set'
end

When /^I click first edit link$/ do
  click_link "Edit"
end

