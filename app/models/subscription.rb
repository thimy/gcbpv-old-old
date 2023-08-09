class Subscription < ApplicationRecord
  belongs_to :season
  belongs_to :student
  belongs_to :payment_state
  has_and_belongs_to_many :course
  has_and_belongs_to_many :workshop
  has_many :sessions

  accepts_nested_attributes_for :sessions

  validates :season, presence: true
  validates :student, presence: true, uniqueness: { scope: :season,
    message: "a déjà une inscription pour cette année" }
end
