# frozen_string_literal: true

class Global::CardComponent < ViewComponent::Base
  def initialize(title:, url:, image: nil, tags: nil, classes: nil)
    @title = title
    @url = url
    @image = image
    @tags = tags
    @classes = classes
  end

end
