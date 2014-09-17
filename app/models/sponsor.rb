class Sponsor < User

	has_and_belongs_to_many :presentations
	belongs_to :track
	
end
