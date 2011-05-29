class OrderLine < ActiveRecord::Base
  belongs_to :order
end
