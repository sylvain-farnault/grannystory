class User < ApplicationRecord
  has_one_attached :photo
  has_many :grannies
  has_many :bookings
  has_many :rent_grannies, through: :bookings, source: :granny
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
