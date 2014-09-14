class Tracks < ActiveRecord::Migration
  def change
  	create_table :tracks do |t|
      t.string :name
      t.string :phone
      t.time :start_time
      t.time :end_time
      t.string :url2
      t.string :location_name
      t.string :street
      t.string :street_number
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.timestamps
	end
  end
end
