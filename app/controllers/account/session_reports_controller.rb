class Account::SessionReportsController < ApplicationController
  before_action :authenticate_user!
  layout "account"

  # GET /sessions/new - https://medium.com/@ryanwerner_57863/how-to-build-a-nested-form-in-rails-using-fields-for-c185210f6869
  def new
    @report = Report.new
    @report.tune_files.build
  end

  # GET /reports/1 or /reportss/1.json
  def show
    @report = Report.find(params[:id])
  end

  # GET /sessions/1/edit
  def edit
    @report = Report.find(params[:id])
  end

  # POST /reports or /reports.json
  def create
    @session = Session.find(params[:session_id])
    @report = Report.new(report_params)
    @report.session = @session

    respond_to do |format|
      if @report.save
        format.html { redirect_to account_session_reports_path, notice: "report was successfully created." }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1 or /reports/1.json
  def update
    @report = Report.find(params[:id])
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to account_session_reports_path, notice: "report was successfully updated." }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1 or /reports/1.json
  def destroy
    @report.destroy

    respond_to do |format|
      format.html { redirect_to reports_url, notice: "Report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def report_params
      params.require(:report).permit(:date, :description, tune_files: [:name, :description, :file])
    end
end
