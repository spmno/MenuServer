class Dish < ActiveRecord::Base
  attr_accessible :name, :description, :price, :kind_id, :photo
  mount_uploader :photo, PhotoUploader
  belongs_to :dish_kind
  belongs_to :order_item
end
