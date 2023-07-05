class Emt::MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[ show edit update destroy ]

  def index
    @meetings = Meeting.all
  end

  def show
    # @sessions = Session.joins(:meeting_class).where(meeting_class: {meeting: @meeting})
    # @sessions_by_city_and_day = @sessions.order(:start_time).group_by{ |session| [session.city, session.day] }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meeting_params
      params.require(:meeting).permit(:status, :title, :content)
    end
end
