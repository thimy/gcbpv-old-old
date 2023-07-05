class Instrument < ApplicationRecord
  has_many :courses
  has_many :teachers, through: :courses

  validates :name, presence: true

  # def sessions
  #   Session.joins(:course).where(course: {instrument: self})
  # end

  def slots
    Slot.joins(:teacher).where(teacher: {instrument: self})
  end
end
