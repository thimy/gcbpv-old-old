class GroupementController < ApplicationController
  def index
  end

  def staff
    @staff = Staff.all.where(status: "Actif")
  end
end
