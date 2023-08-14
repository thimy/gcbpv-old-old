class DClass < ApplicationRecord
  belongs_to :discovery
  belongs_to :teacher
  belongs_to :city

  enum day: array_to_enum_hash(DayOfWeek::DAYS_OF_WEEK), _suffix: true

  def name
    "#{discovery.name} avec #{teacher.name} à #{city.name}"
  end

  def day
    @day ||= DayOfWeek.new(read_attribute(:day))
  end
end
