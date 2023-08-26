class Account::DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :update]
  layout "account"

  def index
    @subscription = Subscription.where(student: current_user.id)
    @sessions = Session.where(subscription: @subscription)
    @workshops = Workshop.joins(:subscriptions).where(subscriptions: @subscription)
    # select w.* from workshops w join subscriptions_workshops sw on w.id = sw.workshop_id join subscriptions s on sw.subscription_id = s.id where s.student_id = 1

    if current_user.teacher?
      @teacher = Teacher.find(current_user.teacher_id)
      @teacher_sessions = Session.where(course: Course.where(teacher: @teacher)).includes(:slot).group_by { |session| session.slot.day }.transform_values { |values| values.flatten }
      @teacher_workshops = Workshop.where(teacher: @teacher).joins(:subscriptions)
    end
  end
end
