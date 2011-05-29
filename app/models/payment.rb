class Payment < ActiveRecord::Base
  has_many :orders
end
