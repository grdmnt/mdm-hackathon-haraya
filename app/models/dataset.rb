class Dataset < ApplicationRecord
  mount_uploader :datafile, DatafileUploader
  belongs_to :user
  belongs_to :community
  validates :name, :documentation, presence: true
  validates :user, presence: true
end
