class AddImagesToAds < ActiveRecord::Migration
  def change
    add_column :ads, :image, :string
    add_column :ads, :image_url, :string
  end
end
