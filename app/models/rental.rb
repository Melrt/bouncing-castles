class Rental < ApplicationRecord
  belongs_to :castle
  belongs_to :player, class_name: 'User'
end
