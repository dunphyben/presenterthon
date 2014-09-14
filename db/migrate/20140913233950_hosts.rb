class Hosts < ActiveRecord::Migration
  def change
  	create_table :hosts do |t|
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
      t.string :email1
      t.string :email2
      t.boolean :admin, default: true

      t.timestamps
	end
  end
end