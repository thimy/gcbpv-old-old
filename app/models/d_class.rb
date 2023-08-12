class DClass < ApplicationRecord
  belongs_to :discovery
  belongs_to :teacher
  belongs_to :city

  def name
    "#{discovery.name} avec #{teacher.name} à #{city.name}"
  end
end
