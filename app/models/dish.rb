class Dish < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :dish_kind
  has_one :order_item
  validates_presence_of :name, :description, :price, :dish_kind_id, :photo
end
