class Emt::DiscoveriesController < ApplicationController
  before_action :set_discovery, only: %i[ show edit update destroy ]
  def index
    @discoveries = Discovery.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discovery
      @discovery = Discovery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def discovery_params
      params.require(:discovery).permit(:status, :title, :content)
    end
end
