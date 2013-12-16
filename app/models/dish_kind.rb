class DishKind < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  has_many :dishes
  has_many :pages
  validates_presence_of :name, :photo
end
