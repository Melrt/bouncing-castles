class Castle < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :renter, class_name: 'User'
  has_many :rentals, dependent: :destroy
end
