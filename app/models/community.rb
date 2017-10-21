class Community < ApplicationRecord
  validates :name, presence: true, uniqueness: true,
    format: { with: /\A[a-z0-9\-\_]+\z/,
      message: "only allows letters" }
  validates :description, presence: true
  has_many :users
  has_many :datasets
end
