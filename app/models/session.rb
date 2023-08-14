class Session < ApplicationRecord
  belongs_to :course
  belongs_to :subscription, optional: true
  belongs_to :slot

  include WithTime

  def formatted_time
    time(session_time)
  end

  def time_slot
    if start_time.present?
      "de #{time(start_time)} à #{time(end_time)}"
    else
      "à définir"
    end
  end
end
