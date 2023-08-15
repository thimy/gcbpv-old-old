# frozen_string_literal: true

class Account::NavigationComponent < ViewComponent::Base
  def initialize(current_user:)
    @current_user = current_user
  end
end
