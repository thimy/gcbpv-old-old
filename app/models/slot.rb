class Slot < ApplicationRecord
  self.skip_time_zone_conversion_for_attributes = [:start_time, :end_time]

  belongs_to :teacher
  belongs_to :city

  enum day: ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi"]

  validates :day, inclusion: { in: days.keys }

  def name
    "#{teacher.name} à #{city.name} entre #{start_time.strftime("%kh%M")} et #{end_time.strftime("%kh%M")}"
  end
end
