class RemoveUsersType < ActiveRecord::Migration
  def change
  	remove_column :users, :type 
  end
end
