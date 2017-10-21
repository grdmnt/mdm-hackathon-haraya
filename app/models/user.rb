class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable, :registerable,
  # :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :datasets
  has_many :communities
end
