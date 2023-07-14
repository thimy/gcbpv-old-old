class Subscription < ApplicationRecord
  belongs_to :season
  belongs_to :student
  belongs_to :payment_state
  has_and_belongs_to_many :course
  has_and_belongs_to_many :workshop

  validates :season, presence: true
  validates :student, presence: true, uniqueness: { scope: :season,
    message: "a déjà une inscription pour cette année" }
end
