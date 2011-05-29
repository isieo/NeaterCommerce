class PaymentMethod < ActiveRecord::Base
  has_one :gateway
end
