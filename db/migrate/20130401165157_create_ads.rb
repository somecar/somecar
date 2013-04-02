class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.integer  :year
      t.string   :color
      t.integer  :price
      t.string   :bodytype
      t.string   :mileage
      t.string   :enginetype
      t.integer  :enginecapacity
      t.string   :drive
      t.integer  :power
      t.string   :transmission
      t.string   :state
      t.string   :wheel
      t.boolean  :customs
      t.boolean  :exchange
      t.integer  :owner
      t.date     :date
      t.string   :country
      t.string   :photo
      t.string   :region
      t.string   :city
      
      t.timestamps
    end
  end
end
