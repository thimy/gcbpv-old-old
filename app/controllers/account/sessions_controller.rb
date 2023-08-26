class Account::SessionsController < ApplicationController
  before_action :authenticate_user!
  layout "account"

  def index
    @sessions = Session.where(slot: Slot.where(teacher: current_user.teacher)).includes(:subscription)
  end

  # GET /sessions/1 or /sessions/1.json
  def show
    @session = Session.find(params[:id])
  end

  # GET /sessions/new
  def new
    @report = Report.new
  end

  # GET /sessions/1/edit
  def edit
    @session = Session.find(params[:id])
  end

  # POST /sessions or /sessions.json
  def create
    @report = Report.new(session_params)

    respond_to do |format|
      if @session.save
        format.html { redirect_to account_sessions_path, notice: "session was successfully created." }
        format.json { render :show, status: :created, location: @session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sessions/1 or /sessions/1.json
  def update
    @session = Session.find(params[:id])
    respond_to do |format|
      if @session.update(session_params)
        format.html { redirect_to account_sessions_path, notice: "Session was successfully updated." }
        format.json { render :show, status: :ok, location: @session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1 or /sessions/1.json
  def destroy
    @session.destroy

    respond_to do |format|
      format.html { redirect_to sessions_url, notice: "Session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def session_params
      params.require(:session).permit(:city, :day, :frequency, :start_time, :end_time)
    end
end
