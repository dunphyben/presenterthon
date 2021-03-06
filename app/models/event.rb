class Event < ActiveRecord::Base

	extend FriendlyId
  	friendly_id :name, use: :slugged

	belongs_to :host
	has_many :tracks
end