class GrannyPassion < ApplicationRecord
  belongs_to :granny
  belongs_to :passion

  validates :passion, uniqueness: { scope: [:granny] }
end
