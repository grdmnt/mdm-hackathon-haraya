class Dataset < ApplicationRecord
  mount_uploader :datafile, DatafileUploader
  belongs_to :user
  belongs_to :community
  validates :name, presence: true, uniqueness: true
  validates :documentation, :user, :community, presence: true
  validates :private, inclusion: { in: [ true, false ] }
end
