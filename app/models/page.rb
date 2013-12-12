class Page < ActiveRecord::Base
  attr_accessible :name, :photo, :dish_kind_id
  mount_uploader :photo, PhotoUploader
  has_many :display_items
  belongs_to :dish_kind
  validates_presence_of :name, :photo, :dish_kind_id
end
