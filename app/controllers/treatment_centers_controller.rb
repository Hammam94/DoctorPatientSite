class TreatmentCentersController < ApplicationController
  before_action :set_treatment_center, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /treatment_centers
  # GET /treatment_centers.json
  def index
    @treatment_centers = TreatmentCenter.all
  end

  # GET /treatment_centers/1
  # GET /treatment_centers/1.json
  def show
  end

  # GET /treatment_centers/new
  def new
    @treatment_center = TreatmentCenter.new
  end

  # GET /treatment_centers/1/edit
  def edit
  end

  # POST /treatment_centers
  # POST /treatment_centers.json
  def create
    @treatment_center = TreatmentCenter.new(treatment_center_params)

    respond_to do |format|
      if @treatment_center.save
        format.html { redirect_to @treatment_center, notice: 'Treatment center was successfully created.' }
        format.json { render :show, status: :created, location: @treatment_center }
      else
        format.html { render :new }
        format.json { render json: @treatment_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treatment_centers/1
  # PATCH/PUT /treatment_centers/1.json
  def update
    respond_to do |format|
      if @treatment_center.update(treatment_center_params)
        format.html { redirect_to @treatment_center, notice: 'Treatment center was successfully updated.' }
        format.json { render :show, status: :ok, location: @treatment_center }
      else
        format.html { render :edit }
        format.json { render json: @treatment_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treatment_centers/1
  # DELETE /treatment_centers/1.json
  def destroy
    @treatment_center.destroy
    respond_to do |format|
      format.html { redirect_to treatment_centers_url, notice: 'Treatment center was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment_center
      @treatment_center = TreatmentCenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treatment_center_params
      params.require(:treatment_center).permit(:name, :syndicate_id, :address, :specialization_id, :likes, :dislikes)
    end
end
