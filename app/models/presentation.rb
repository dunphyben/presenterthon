class Presentation < ActiveRecord::Base

	extend FriendlyId
  	friendly_id :name, use: :slugged

	has_and_belongs_to_many :tracks
	has_and_belongs_to_many :users
	has_attached_file :file 
	validates_attachment :file, content_type: {content_type: "application/pdf"}


end

