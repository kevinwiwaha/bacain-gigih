class DateMentorsController < ApplicationController
  before_action :set_date_mentor, only: %i[ show edit update destroy ]

  # GET /date_mentors or /date_mentors.json
  def index
    @date_mentors = DateMentor.all
  end

  # GET /date_mentors/1 or /date_mentors/1.json
  def show
  end

  # GET /date_mentors/new
  def new
    @date_mentor = DateMentor.new
  end

  # GET /date_mentors/1/edit
  def edit
  end

  # POST /date_mentors or /date_mentors.json
  def create
    @date_mentor = DateMentor.new(date_mentor_params)

    respond_to do |format|
      if @date_mentor.save
        format.html { redirect_to date_mentor_url(@date_mentor), notice: "Date mentor was successfully created." }
        format.json { render :show, status: :created, location: @date_mentor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @date_mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_mentors/1 or /date_mentors/1.json
  def update
    respond_to do |format|
      if @date_mentor.update(date_mentor_params)
        format.html { redirect_to date_mentor_url(@date_mentor), notice: "Date mentor was successfully updated." }
        format.json { render :show, status: :ok, location: @date_mentor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @date_mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_mentors/1 or /date_mentors/1.json
  def destroy
    @date_mentor.destroy

    respond_to do |format|
      format.html { redirect_to date_mentors_url, notice: "Date mentor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_mentor
      @date_mentor = DateMentor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def date_mentor_params
      params.require(:date_mentor).permit(:date)
    end
end
