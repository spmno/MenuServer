class Dish < ActiveRecord::Base
  attr_accessible :name, :description, :price, :dish_kind_id, :photo
  mount_uploader :photo, PhotoUploader
  belongs_to :dish_kind
  belongs_to :order_item
end
