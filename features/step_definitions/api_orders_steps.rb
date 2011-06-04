Given /^the following api_orders:$/ do |api_orders|
  ApiOrders.create!(api_orders.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) api_orders$/ do |pos|
  visit api_orders_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following api_orders:$/ do |expected_api_orders_table|
  expected_api_orders_table.diff!(tableish('table tr', 'td,th'))
end
