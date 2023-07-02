# frozen_string_literal: true

class Posts::PostListComponent < ViewComponent::Base
  def initialize(posts:)
    @posts = posts
  end

end
