class City < ApplicationRecord
  # Cities where the school dispenses classes
  validates :name, presence: true
end
