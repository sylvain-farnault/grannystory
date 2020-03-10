class Granny < ApplicationRecord
  belongs_to :user
  # has_many :granny_passions, dependent: :destroy
  # has_many :passsions, through: :granny_passions
  validates :name, uniqueness: true, presence: true, length: { minimum: 3 }
  validates :address, presence: true
  validates :birth_date
  validates :user, presence: true
  validates :price, presence: true
end
