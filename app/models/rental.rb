class Rental < ApplicationRecord
  belongs_to :castle
  belongs_to :player, class_name: 'User'
  before_save :default_values

  # validates :starts_on, presence: true
  # validates :ends_on, presence: true

  def default_values
    if self.status.nil?
      self.status = 'pending'
    end
  end
end
