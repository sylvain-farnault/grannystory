class Passion < ApplicationRecord
  has_many :granny_passions
  has_many :grannies, through: :granny_passions
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
end
