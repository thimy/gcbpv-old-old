class Session < ApplicationRecord
  belongs_to :course
  belongs_to :subscription, optional: true
  belongs_to :slot

  include WithTime

  def formatted_time
    time(session_time)
  end
end
