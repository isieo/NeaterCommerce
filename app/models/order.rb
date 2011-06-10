class Order < ActiveRecord::Base
  has_many :order_lines
  has_one :billing_address
  has_one :shipping_address
  has_many :payments
  belongs_to :customer

  accepts_nested_attributes_for :customer, :payments

  state_machine :payment_state, :initial => :pending do

  end

  def pay(options)
    return
    p = Payment.new

    self.payments << p
  end

end

