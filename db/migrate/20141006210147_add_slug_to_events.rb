class AddSlugToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :slug, :string
  	add_column :tracks, :slug, :string
  	add_column :presentations, :slug, :string
  	add_column :users, :slug, :string
  end
end
