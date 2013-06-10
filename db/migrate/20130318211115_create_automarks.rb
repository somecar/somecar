class CreateAutomarks < ActiveRecord::Migration
  def change
    create_table :automarks do |t|
      t.string :name

      t.timestamps
    end
  end
end
