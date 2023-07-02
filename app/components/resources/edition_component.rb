# frozen_string_literal: true

class Resources::EditionComponent < ViewComponent::Base
  def initialize(edition:)
    @edition = edition
  end

end
