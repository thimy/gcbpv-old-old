class Emt::InstrumentsController < ApplicationController
  before_action :set_instrument, only: %i[ show edit update destroy ]

  def index
    @instruments = Instrument.all
  end

  def show
    @sessions = Session.joins(:instrument_class).where(instrument_class: {instrument: @instrument})
    @sessions_by_city_and_day = @sessions.order(:start_time).group_by{ |session| [session.city, session.day] }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrument
      @instrument = Instrument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def instrument_params
      params.require(:instrument).permit(:status, :title, :content)
    end
end
