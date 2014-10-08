class Track < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :event
  belongs_to :track
  has_and_belongs_to_many :presentations
end