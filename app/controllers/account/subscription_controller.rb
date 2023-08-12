class Account::SubscriptionController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :update]
  layout "account"

  def show
    @students = Student.where(payor_id: current_user.id)
    @subscriptions = Subscription.where(students: @students).includes(:workshop, :d_class)
    @plan = Season.last.plan
    @total = 0
    @subscriptions.map{|sub| @total += sub.sessions_and_workshops_total}
  end
end
