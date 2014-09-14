class Events < ActiveRecord::Migration
  def change
  	create_table :events do |t|
      t.string :name
      t.string :phone
      t.string :url1
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
