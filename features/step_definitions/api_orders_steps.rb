World(Rack::Test::Methods)

Given /^I sent a valid json order data with one product$/ do
  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'
  post '/api/order.json',{
    :customer => { :first_name => 'Calvin', :last_name => 'Tee', :email => 'calvin@example.com'},
    :products => [{ :id => 1, :quantity => 1 }]
  }.to_json
end

Then /^I should receive the created order in json$/ do
  data = ActiveSupport::JSON.decode(last_response.body)
  order_data = data["order"]
  order_data.nil?.should == false
  order_data["id"].nil?.should == false
  order_data["order_lines"].count.should == 1
end

Given /^I sent a valid json order data with two products$/ do
  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'
  post '/api/order.json',{
    :customer => { :first_name => 'Calvin', :last_name => 'Tee', :email => 'calvin@example.com'},
    :products => [{ :id => 1, :quantity => 1 },{ :id => 2, :quantity => 1 }]
  }.to_json
end

Then /^I should receive the created order data with two products in json$/ do
  data = ActiveSupport::JSON.decode(last_response.body)
  order_data = data["order"]
  order_data.nil?.should == false
  order_data["id"].nil?.should == false
  order_data["order_lines"].count.should > 1
end

Then /^I send payment details to complete the order$/ do
  data = ActiveSupport::JSON.decode(last_response.body)
  order_data = data["order"]
  put "/api/order/#{order_data["id"]}.json",{
            :billing_address => { :first_name => 'Calvin',
                                  :last_name => 'Tee',
                                  :email => 'calvin@example.com',
                                  :address1 => '2323,
                                  :test land',
                                  :address2 => 'me test',
                                  :city => 'Awesome city',
                                  :state_name => 'Plain Awesomeness',
                                  :state_id => nil,
                                  :country => { :id => 1 } },
            :payment => { :payment_method=>'creditcard',
                          :payment_data =>{
                              :credit_card_number => '4111111111111111',
                              :expiry_date => '04/15',
                              :cvv => '132',
                          }
            },
    }.to_json
end

Then /^I should receive the updated order in json$/ do
  data = ActiveSupport::JSON.decode(last_response.body)
  order_data = data["order"]
  puts order_data.to_yaml
end

Then /^I should not receive the updated order in json$/ do
  pending # express the regexp above with the code you wish you had
end

