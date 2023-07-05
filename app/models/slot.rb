class Slot < ApplicationRecord
  self.skip_time_zone_conversion_for_attributes = [:start_time, :end_time]

  belongs_to :teacher
  belongs_to :city

  def name
    "#{teacher.name} à #{city.name} #{day_as_text} #{time_as_text}"
  end

  def day_as_text
    if day.present?
      "le #{day}"
    end
  end

  def time_as_text
    if start_time.present?
      "entre #{start_time.strftime("%kh%M")} et #{end_time.strftime("%kh%M")}"
    end
  end
end
