# frozen_string_literal: true

class Global::HeaderComponent < ViewComponent::Base
  attr_reader :title, :current_user
  delegate :user_signed_in?, :inline_svg, to: :helpers
  
  def initialize(title:, current_user:)
    @title = title
    @current_user = current_user
  end
end
