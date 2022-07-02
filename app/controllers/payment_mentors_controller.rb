class PaymentMentorsController < ApplicationController
  before_action :set_payment_mentor, only: %i[ show edit update destroy ]

  # GET /payment_mentors or /payment_mentors.json
  def index
    @payment_mentors = PaymentMentor.all
  end

  # GET /payment_mentors/1 or /payment_mentors/1.json
  def show
  end

  # GET /payment_mentors/new
  def new
    @payment_mentor = PaymentMentor.new
  end

  # GET /payment_mentors/1/edit
  def edit
  end

  # POST /payment_mentors or /payment_mentors.json
  def create
    @payment_mentor = PaymentMentor.new(payment_mentor_params)

    respond_to do |format|
      if @payment_mentor.save
        format.html { redirect_to payment_mentor_url(@payment_mentor), notice: "Payment mentor was successfully created." }
        format.json { render :show, status: :created, location: @payment_mentor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment_mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_mentors/1 or /payment_mentors/1.json
  def update
    respond_to do |format|
      if @payment_mentor.update(payment_mentor_params)
        format.html { redirect_to payment_mentor_url(@payment_mentor), notice: "Payment mentor was successfully updated." }
        format.json { render :show, status: :ok, location: @payment_mentor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment_mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_mentors/1 or /payment_mentors/1.json
  def destroy
    @payment_mentor.destroy

    respond_to do |format|
      format.html { redirect_to payment_mentors_url, notice: "Payment mentor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_mentor
      @payment_mentor = PaymentMentor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payment_mentor_params
      params.require(:payment_mentor).permit(:payment_proof, :is_valid_payment)
    end
end
