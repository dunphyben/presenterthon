class HostUser < User
	belongs_to :host

	validates :email, presence: true
	validates_uniqueness_of :email
	validates :name, presence: true
end
