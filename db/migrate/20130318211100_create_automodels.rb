class CreateAutomodels < ActiveRecord::Migration
  def change
    create_table :automodels do |t|
      t.string :name
      t.integer :automark_id

      t.timestamps
    end
  end
end
