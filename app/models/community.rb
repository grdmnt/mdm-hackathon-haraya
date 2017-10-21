class Community < ApplicationRecord
  validates :name, presence: true, uniqueness: true,
    format: { with: /\A[A-Za-z0-9\-\_]+\z/,
      message: "only allows letters" }
  validates :description, presence: true
  has_many :memberships
  has_many :users, through: :memberships
  has_many :datasets

  def to_param
    name
  end
end
