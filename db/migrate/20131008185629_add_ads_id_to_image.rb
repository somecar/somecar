class AddAdsIdToImage < ActiveRecord::Migration
  def change
    add_column :images, :ads_id, :integer
  end
end
