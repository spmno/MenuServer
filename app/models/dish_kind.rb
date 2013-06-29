class DishKind < ActiveRecord::Base
  has_many :dishes
end
