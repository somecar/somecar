class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :color
      t.integer :price
      t.string :bodytype
      t.integer :mileage
      t.string :enginetype
      t.integer :enginecapacity
      t.string :drive
      t.integer :power
      t.string :transmission
      t.string :state
      t.string :wheel
      t.boolean :customs
      t.string :exchange
      t.integer :owner
      t.date :date
      t.has_attached_file :photo
      t.string :region
      t.string :city
      t.integer :automodel_id
      t.integer :automark_id

      t.timestamps
    end
  end
end
