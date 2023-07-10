class Instrument < ApplicationRecord
  has_many :courses
  has_many :teachers, through: :courses

  validates :name, presence: true

  accepts_nested_attributes_for :teachers
  # def sessions
  #   Session.joins(:course).where(course: {instrument: self})
  # end

  def slots
    Slot.joins(:teacher).where(teacher: {instrument: self})
  end
end
