class Emt::WorkshopsController < ApplicationController
  before_action :set_workshop, only: %i[ show edit update destroy ]

  def index
    @workshops = Workshop.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workshop
      @workshop = Workshop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workshop_params
      params.require(:workshop).permit(:status, :title, :content)
    end
end
