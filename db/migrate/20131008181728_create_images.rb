class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image
      t.string :image_url

      t.timestamps
    end
    remove_column :ads, :image, :image_url
  end
end
