class CreateJoinTables < ActiveRecord::Migration
  def change
  	create_join_table :tracks, :presentations
  	create_join_table :users, :presentations
  end
end
