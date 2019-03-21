class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :castles, foreign_key: :renter_id
  has_many :rentals, foreign_key: :player_id

  # validates :email, presence: true, uniqueness: true => cf schema, inherited from devise
  validates :first_name, presence: true
  validates :last_name, presence: true
end
