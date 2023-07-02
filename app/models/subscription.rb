class Subscription < ApplicationRecord
  belongs_to :season
  belongs_to :student
  has_and_belongs_to_many :instrument_class
  has_and_belongs_to_many :workshop

  VALID_STATUSES = [
    "Demande d’information",
    "Inscrit",
    "Règlement partiel",
    "Règlement complet",
    "À rembourser"
  ]

  validates :season, presence: true
  validates :student, presence: true
  validates :status, presence: true, inclusion: { in: VALID_STATUSES }
end
