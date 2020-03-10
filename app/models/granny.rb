class Granny < ApplicationRecord
  belongs_to :user
  has_many :granny_passions, dependent: :destroy
  has_many :passsions, through: :granny_passions
  validates :name, uniqueness: true, presence: true, length: { minimum: 2 }
  validates :address, presence: true
  validates :birth_date, presence: true
  validates :user, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
