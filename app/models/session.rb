class Session < ApplicationRecord
  belongs_to :course
  belongs_to :subscription, optional: true
  belongs_to :slot
  has_many :reports

  include WithTime

  def formatted_time
    time(start_time)
  end

  def time_slot
    if start_time.present?
      "de #{time(start_time)} à #{time(end_time)}"
    else
      "à définir"
    end
  end

  def tune_files=(tunes_attributes)
    tunes_attributes.each do |i, tune_attributes|
      self.tune_files(tune_attributes)
    end
  end
end
