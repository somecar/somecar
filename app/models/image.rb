class Image < ActiveRecord::Base
  attr_accessible :image, :image_url, :ad_id
  belongs_to :ad
  mount_uploader :image, ImageUploader
end
