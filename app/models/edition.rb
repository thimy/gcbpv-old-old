class Edition < ApplicationRecord
  # An edition is a medium that is promoted by the association
  has_one_attached :image

  validates :name, presence: true
  validates :description, presence: true
  validates :format, presence: true
  validates :price, presence: true
end
