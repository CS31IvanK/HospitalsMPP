class MedicalCardsController < ApplicationController
  before_action :set_medical_card, only: %i[ show edit update destroy ]

  # GET /medical_cards or /medical_cards.json
  def index
    if params[:patient_id].present?
      @patient = Patient.find(params[:patient_id])
      @medical_cards = @patient.medical_cards.where('appointment_date >= ?', Time.now).order(appointment_date: :asc)
    else
      @medical_cards = MedicalCard.where('appointment_date >= ?', Time.now).order(appointment_date: :asc)
    end
    @past_medical_cards = MedicalCard.where('appointment_date < ?', Time.now).order(appointment_date: :desc)
  end


  def past
    @medical_cards = MedicalCard.where('appointment_date < ?', Time.now).order(appointment_date: :desc)
    render :index
  end


  # GET /medical_cards/1 or /medical_cards/1.json
  def show
  end


  def mark_attended
    @medical_card = MedicalCard.find(params[:id])
    if @medical_card.update(attended: true)
      render json: { attended: true }
    else
      render json: { error: "Failed to update attendance status" }, status: :unprocessable_entity
    end
  end


  def mark_not_attended
    @medical_card = MedicalCard.find(params[:id])
    if @medical_card.update(attended: false)
      render json: { attended: false }
    else
      render json: { error: "Failed to update attendance status" }, status: :unprocessable_entity
    end
  end


  # GET /medical_cards/new
  def new
    @medical_card = MedicalCard.new
    @patients = Patient.all
    @doctors = Doctor.all
    @hospitals = Hospital.all
  end

  # GET /medical_cards/1/edit
  def edit
  end

  # POST /medical_cards or /medical_cards.json
  def create
    @medical_card = MedicalCard.new(medical_card_params)

    respond_to do |format|
      if @medical_card.save
        format.html { redirect_to medical_card_url(@medical_card), notice: "Medical card was successfully created." }
        format.json { render :show, status: :created, location: @medical_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medical_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_cards/1 or /medical_cards/1.json
  def update
    respond_to do |format|
      if @medical_card.update(medical_card_params)
        format.html { redirect_to medical_card_url(@medical_card), notice: "Medical card was successfully updated." }
        format.json { render :show, status: :ok, location: @medical_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medical_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_cards/1 or /medical_cards/1.json
  def destroy
    @medical_card.destroy!

    respond_to do |format|
      format.html { redirect_to medical_cards_url, notice: "Medical card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_medical_card
    @medical_card = MedicalCard.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def medical_card_params
    params.require(:medical_card).permit(:medical_card_id, :patient_id, :doctor_id, :hospital_id, :diagnosis, :appointment_date, :appointment_type)
  end
end