class Image < ActiveRecord::Base
  attr_accessible :image, :image_url
  belongs_to :ad
  mount_uploader :image, ImageUploader
end
