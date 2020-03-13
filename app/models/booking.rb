class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :granny


validates :user, presence: true
validates :granny, presence: true
validates :start_date, presence: true
validates :duration, presence: true
validates :price, presence: true
end
