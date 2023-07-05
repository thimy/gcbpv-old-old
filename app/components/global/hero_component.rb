# frozen_string_literal: true

class Global::HeroComponent < ViewComponent::Base
  renders_one :extra

  def initialize(title:, subtitle: nil)
    @title = title
    @subtitle = subtitle
  end

end
