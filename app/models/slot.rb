class Slot < ApplicationRecord
  self.skip_time_zone_conversion_for_attributes = [:start_time, :end_time]

  include WithTime

  belongs_to :teacher
  belongs_to :city

  def name
    "#{teacher.name} à #{city.name} #{day_as_text} #{time_as_text}"
  end

  def name_without_city
    "#{teacher.name} #{day_as_text} #{time_as_text}"
  end

  def day_as_text
    if day.present?
      "le #{day}"
    end
  end

  def time_as_text
    if start_time.present?
      if end_time.present?
        "entre #{time(start_time)} et #{time(end_time)}"
      else
        "à partir de #{time(start_time)}"
      end
    end
  end
end
