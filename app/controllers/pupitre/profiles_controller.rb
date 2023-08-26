module Pupitre
  class ProfilesController < Pupitre::ApplicationController
    include ApplicationHelper
    def index
      @teacher_id = current_user.teacher_id
      @sessions = Session.where(slot: Slot.where(teacher: current_user.teacher)).includes(:subscription)
    end
  end
end
