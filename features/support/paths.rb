module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'
    when /the new api_orders page/
      new_api_orders_path

    when /the new products page/
      new_products_path

    when /the new items page/
      new_items_path

    when /the new api_checkout page/
      new_api_checkout_path

    when /the new checkout page/
      new_checkout_path

    when /the new checkout page/
      new_checkout_path

    when /the new user page/
      new_user_path

    when /the new user_action page/
      new_user_action_path

    when /the new product_group page/
      new_product_group_path

    when /the new item_api page/
      new_item_api_path

    when /the new customer page/
      new_customer_path

    when /the new payment_profile page/
      new_payment_profile_path

    when /the new gateway page/
      new_gateway_path

    when /the new payment_method page/
      new_payment_method_path

    when /the new payment page/
      new_payment_path

    when /the new order_line page/
      new_order_line_path

    when /the new order page/
      new_order_path

    when /the new state page/
      new_state_path

    when /the new country page/
      new_country_path

    when /the new address page/
      new_address_path

    when /the new product page/
      new_product_path

    when /the new item page/
      new_item_path

    when /the new manage_items page/
      new_manage_items_path

    when /the new manage_products page/
      new_manage_products_path


    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
