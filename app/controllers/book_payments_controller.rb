class BookPaymentsController < ApplicationController
  before_action :set_book_payment, only: %i[ show edit update destroy ]

  # GET /book_payments or /book_payments.json
  def index
    @book_payments = BookPayment.all
  end

  # GET /book_payments/1 or /book_payments/1.json
  def show
  end

  # GET /book_payments/new
  def new
    @book_payment = BookPayment.new
  end

  # GET /book_payments/1/edit
  def edit
  end

  # POST /book_payments or /book_payments.json
  def create
    @book_payment = BookPayment.new(book_payment_params)

    respond_to do |format|
      if @book_payment.save
        format.html { redirect_to book_payment_url(@book_payment), notice: "Book payment was successfully created." }
        format.json { render :show, status: :created, location: @book_payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_payments/1 or /book_payments/1.json
  def update
    respond_to do |format|
      if @book_payment.update(book_payment_params)
        format.html { redirect_to book_payment_url(@book_payment), notice: "Book payment was successfully updated." }
        format.json { render :show, status: :ok, location: @book_payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_payments/1 or /book_payments/1.json
  def destroy
    @book_payment.destroy

    respond_to do |format|
      format.html { redirect_to book_payments_url, notice: "Book payment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_payment
      @book_payment = BookPayment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_payment_params
      params.require(:book_payment).permit(:payment_proof, :is_valid_payment, :book_id, :user_id)
    end
end
