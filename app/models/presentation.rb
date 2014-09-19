class Presentation < ActiveRecord::Base

	has_and_belongs_to_many :tracks
	has_and_belongs_to_many :users
	has_attached_file :file 
	validates_attachment :file, content_type: {content_type: "application/pdf"}


end

