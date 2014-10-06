class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # extend FriendlyId
  # friendly_id :name, use: :slugged
  # add username to devise model. slugify it.

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :presentations

  validates :email, presence: true
  validates_uniqueness_of :email
  validates :name, presence: true
end
