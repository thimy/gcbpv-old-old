# frozen_string_literal: true

class Global::HeroComponent < ViewComponent::Base
  renders_one :extra

  def initialize(title:)
    @title = title
  end

end
