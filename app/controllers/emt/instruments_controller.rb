class Emt::InstrumentsController < ApplicationController
  before_action :set_instrument, only: %i[ show edit update destroy ]

  def index
    @instruments = Instrument.all
  end

  def show
    @slots = Slot.all.order(:city_id).group_by{ |slot| [slot.city, slot.day]}
    @courses = Course.where(instrument: @instrument).group_by{|course| [course.teacher, course.instrument]}
    # @slots_by_city_and_day = @instrument.slots.order(:start_time).group_by{ |slot| [slot.city, slot.day] }
    # @teachers = Teacher.joins(:courses, :instrument).where(course: {instrument: self})
    # @slots = Slot.joins(:teachers, :courses).where(course: {instrument: self})
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
