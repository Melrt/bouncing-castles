class Castle < ApplicationRecord
  belongs_to :renter, class_name: 'User'
  has_many :rentals, dependent: :destroy
end
