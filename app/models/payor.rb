class Payor < ApplicationRecord
  # A payor is the person that will pay for one (can be themselves) or many students
  has_many :students

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :street_address, presence: true
  validates :postcode, presence: true
  validates :city, presence: true

  def name
    "#{first_name} #{last_name}"
  end
end
