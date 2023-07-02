# frozen_string_literal: true

class Events::EventListComponent < ViewComponent::Base
  def initialize(events:)
    @events = events
  end

end
