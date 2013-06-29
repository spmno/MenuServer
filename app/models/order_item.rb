class OrderItem < ActiveRecord::Base
  has_one :dish
end
