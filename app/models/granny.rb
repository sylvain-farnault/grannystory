class Granny < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :granny_passions, dependent: :destroy
  has_many :passions, through: :granny_passions

  has_many :bookings
  validates :name, uniqueness: true, presence: true, length: { minimum: 2 }
  validates :address, presence: true
  validates :birth_date, presence: true
  validates :user, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
