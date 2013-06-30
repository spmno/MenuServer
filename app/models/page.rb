class Page < ActiveRecord::Base
  attr_accessible :name, :photo
  mount_uploader :photo, PhotoUploader
  has_many :display_items
end
