class Presentations < ActiveRecord::Migration
  def change
  	create_table :presentations do |t|
      t.string :name
      t.string :event_id
      t.string :web_link
      t.string :project_url
      t.string :twitter
      t.string :street_number
      t.integer :time_length

      t.timestamps
	end
  end
end
