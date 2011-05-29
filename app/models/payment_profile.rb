class PaymentProfile < ActiveRecord::Base
  has_many :users
end
