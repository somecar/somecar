class RenameColumnToAd < ActiveRecord::Migration
  def up
    rename_column :images, :ads_id, :ad_id
  end

  def down
  end
end
