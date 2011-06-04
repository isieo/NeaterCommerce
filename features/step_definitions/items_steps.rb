Given /^the following items$/ do |items|
  items.hashes.each do |hash|
    Factory(:item, hash)
  end
end

#When /^I follow "([^"]*)"$/ do |page|
#  visit eval("#{page}_path")
#end

Then /^I should see listing items tabular attributes with name ascending$/ do
  output = tableish('table tr', 'td,th')
  data = output[1]
  data[0].should == 'Pencil'
end

Then /^I should see a form$/ do
  output = tableish('form','div')
  output.nil?.should == false
end

#When /^I press "([^"]*)"$/ do |button|
#  click_button button
#end

