class Workshop < ApplicationRecord
  # A workshop is a specific class where students can play as a group
  include WithTime

  belongs_to :teacher
  has_many :subscriptions
  has_and_belongs_to_many :seasons
  has_and_belongs_to_many :subscriptions

  validates :name, presence: true
  validates :teacher_id, presence: true

  def time_period
    if start_time.present?
      if end_time.present?
        "de #{time(start_time)} à #{time(end_time)}"
      else
        "à partir de #{time(start_time)}"
      end
    end
  end

  def date_and_time
    if workshop_day.present?
      if time_period.present?
        "#{I18n.t(workshop_day)} #{time_period}"
      else
        "#{I18n.t(workshop_day)} (horaires à définir)"
      end
    else
      if time_period.present?
        "#{time_period} (jour à définir)"
      else
        "Jour et horaires à définir"
      end
    end
  end
end
