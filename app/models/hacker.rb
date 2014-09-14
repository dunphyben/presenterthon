class Hacker < User
has_and_belongs_to_many :presentations

  validates :email, presence: true
  validates_uniqueness_of :email
  validates :name, presence: true
end
