class Account::DashboardController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show]
  layout "account"

end
