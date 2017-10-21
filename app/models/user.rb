class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable, :registerable,
  # :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :datasets
  has_many :memberships
  has_many :communities, through: :memberships

  def create_community(name, description)
    community = Community.new(name: name, description: description)
    self.memberships.create(community: community)
    community.save!
  end
end
