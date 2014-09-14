class AddEventIdToTracksAgain < ActiveRecord::Migration
  def change
  	add_column :tracks, :event_id, :integer
  end
end
