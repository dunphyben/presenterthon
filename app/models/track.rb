class Track < ActiveRecord::Base
	belongs_to :event
	belongs_to :track
	has_and_belongs_to_many :presentations
end