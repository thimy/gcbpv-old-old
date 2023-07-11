module Pupitre
  class ProfilesController < Pupitre::ApplicationController
    def index
      @self = Teacher.find(current_user.teacher_id)
      @subscriptions = Subscription.joins(:student, :course).where(course: {teacher: @self})
    end
  end
end
