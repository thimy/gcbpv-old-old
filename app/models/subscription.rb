class Subscription < ApplicationRecord
  belongs_to :season
  belongs_to :student
  belongs_to :payment_state
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :workshops
  has_many :sessions
  has_and_belongs_to_many :d_classes

  accepts_nested_attributes_for :sessions

  validates :season, presence: true
  validates :student, presence: true, uniqueness: { scope: :season,
    message: "a déjà une inscription pour cette année" }

  def sessions_and_workshops_total
    total = 0
    total += sessions.size * Season.last.plan.class_price
    extra_workshops = workshops.size - sessions.size
    total += extra_workshops * Season.last.plan.workshop_price if extra_workshops > 0
    sum = 0
    d_classes.map{|dc| sum += dc.discovery.price}
    total += sum
  end
end
