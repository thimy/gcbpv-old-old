class HomeController < ApplicationController
  def index
    now = Time.now
    @events = Event.where("start_date >= :date OR updated_at >= :date", date: now).order(Arel.sql("start_date")).first(3)
    @posts = Post.all
  end
end
