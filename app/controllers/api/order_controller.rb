class Api::OrderController < ApplicationController

  respond_to :json

  def create
    order = Order.new
    order.customer = Customer.find_or_create_by_email params[:customer]
    row = 0
    total_price = 0
    params[:products].each do |product|
      row +=1
      current_product = Product.find(product[:id])
      order.order_lines << OrderLine.create( :product_id =>current_product, :quantity => product[:quantity],:price => current_product.cents, :row_number => row )
      total_price += current_product.cents
    end
    order.total = total_price

    if order.save
      render :json => order.to_json(:include => :customer, :include => { :order_lines =>{:include => :product} })
    else
      render :json => nil
    end
  end

  def update
    order = Order.find(params[:id])


    render :json => order.to_json(:include => :customer, :include => { :order_lines =>{:include => :product} })

  end

end

