class Page < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  has_many :display_items
  belongs_to :dish_kind
  validates_presence_of :name, :photo, :dish_kind_id
end
