module Pupitre
  class ProfilesController < Pupitre::ApplicationController
    def index
      @teacher_id = current_user.teacher_id
      @subscriptions = Subscription.joins(:sessions).where(sessions: Session.where(slot: Slot.in_order_of(:day, Slot::DAYS_ORDERED).where(teacher: @teacher_id)))
    end
  end
end
