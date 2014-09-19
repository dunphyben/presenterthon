class DropHackersAndSponsorsTables < ActiveRecord::Migration
  def change
  		drop_table :hackers
  		drop_table :sponsors 
  end
end
