class SurgeriesController < ApplicationController
  before_action :set_surgery, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  # GET /surgeries
  # GET /surgeries.json
  def index
    @surgeries = Surgery.all
  end

  # GET /surgeries/1
  # GET /surgeries/1.json
  def show
  end

  # GET /surgeries/new
  def new
    @surgery = Surgery.new
  end

  def patientSurgeries
     @surgerys = Patient.find(params[:patient_id]).surgeries
  end

  # GET /surgeries/1/edit
  def edit
  end

  # POST /surgeries
  # POST /surgeries.json
  def create
    @surgery = Surgery.new(surgery_params)
    @surgery.user_id = current_user.id
    
    respond_to do |format|
      if @surgery.save
        format.html { redirect_to @surgery, notice: 'Surgery was successfully created.' }
        format.json { render :show, status: :created, location: @surgery }
      else
        format.html { render :new }
        format.json { render json: @surgery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surgeries/1
  # PATCH/PUT /surgeries/1.json
  def update
    respond_to do |format|
      if @surgery.update(surgery_params)
        format.html { redirect_to @surgery, notice: 'Surgery was successfully updated.' }
        format.json { render :show, status: :ok, location: @surgery }
      else
        format.html { render :edit }
        format.json { render json: @surgery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surgeries/1
  # DELETE /surgeries/1.json
  def destroy
    @surgery.destroy
    respond_to do |format|
      format.html { redirect_to surgeries_url, notice: 'Surgery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgery
      @surgery = Surgery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surgery_params
      params.require(:surgery).permit(:description, :user_id, :patient_id, :S_date, :place)
    end
end
