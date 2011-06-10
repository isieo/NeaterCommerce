class Payment < ActiveRecord::Base
  belongs_to :order
  has_one :payment_method
end
