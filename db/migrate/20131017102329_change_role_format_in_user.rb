class ChangeRoleFormatInUser < ActiveRecord::Migration
  def up
    change_column :users, :role, :string
  end
end
