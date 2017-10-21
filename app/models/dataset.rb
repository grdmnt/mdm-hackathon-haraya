class Dataset < ApplicationRecord
  mount_uploader :datafile, DatafileUploader
end
