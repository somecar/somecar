class AddColumnToAds < ActiveRecord::Migration
  def up
    rename_column :ads, :automodel, :automodel_id
    rename_column :ads, :automark, :automark_id
    add_column :ads, :user_id, :integer
    change_column :ads, :bodytype, :integer
    change_column :ads, :drive, :integer
    change_column :ads, :transmission, :integer
    change_column :ads, :wheel, :integer
    change_column :ads, :customs, :integer
    change_column :ads, :automodel_id, :integer
    change_column :ads, :automark_id, :integer
  end

  def down
    rename_column :ads, :automodel_id, :automodel
    rename_column :ads, :automark_id, :automark
    remove_column :ads, :user_id
  end
end
