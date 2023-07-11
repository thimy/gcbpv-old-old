require "administrate/custom_dashboard"

class ProfileDashboard < Administrate::CustomDashboard
  resource "Profiles" # used by administrate in the views
end
