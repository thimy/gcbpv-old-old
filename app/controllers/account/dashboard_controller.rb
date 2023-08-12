class Account::DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :update]
  layout "account"

  def index
    @subscription = Subscription.where(student: current_user.id)
    @sessions = Session.where(subscription: @subscription)
    @workshops = Workshop.joins(:subscription).where(subscriptions: @subscription)
    # select w.* from workshops w join subscriptions_workshops sw on w.id = sw.workshop_id join subscriptions s on sw.subscription_id = s.id where s.student_id = 1
  end
end
