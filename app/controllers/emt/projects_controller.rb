class Emt::ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy ]
  def index
    @projects = Project.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:status, :title, :content)
    end
end
