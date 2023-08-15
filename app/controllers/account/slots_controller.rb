class Account::SlotsController < ApplicationController
  before_action :authenticate_user!
  layout "account"

  def index
    @slots = Slot.where(teacher: current_user.teacher)
  end

  # GET /slots/1 or /slots/1.json
  def show(id)
    @slot = Slot.find(id)
  end

  # GET /slots/new
  def new
    @slot = Slot.new
  end

  # GET /slots/1/edit
  def edit
    @slot = Slot.find(params[:id])
  end

  # POST /slots or /slots.json
  def create
    @slot = Slot.new(slot_params)

    respond_to do |format|
      if @slot.save
        format.html { redirect_to account_slots_path, notice: "slot was successfully created." }
        format.json { render :show, status: :created, location: @slot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slots/1 or /slots/1.json
  def update
    @slot = Slot.find(params[:id])
    respond_to do |format|
      if @slot.update(slot_params)
        format.html { redirect_to account_slots_path, notice: "Slot was successfully updated." }
        format.json { render :show, status: :ok, location: @slot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slots/1 or /slots/1.json
  def destroy
    @slot.destroy

    respond_to do |format|
      format.html { redirect_to slots_url, notice: "Slot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slot
      @slot = Slot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def slot_params
      params.require(:slot).permit(:city, :day, :frequency, :start_time, :end_time)
    end
end
