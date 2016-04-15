class MedicineCategroysController < ApplicationController
  before_action :set_medicine_categroy, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  # GET /medicine_categroys
  # GET /medicine_categroys.json
  def index
    @medicine_categroys = MedicineCategroy.all
  end

  # GET /medicine_categroys/1
  # GET /medicine_categroys/1.json
  def show
  end

  # GET /medicine_categroys/new
  def new
    @medicine_categroy = MedicineCategroy.new
  end

  # GET /medicine_categroys/1/edit
  def edit
  end

  # POST /medicine_categroys
  # POST /medicine_categroys.json
  def create
    @medicine_categroy = MedicineCategroy.new(medicine_categroy_params)

    respond_to do |format|
      if @medicine_categroy.save
        format.html { redirect_to @medicine_categroy, notice: 'Medicine categroy was successfully created.' }
        format.json { render :show, status: :created, location: @medicine_categroy }
      else
        format.html { render :new }
        format.json { render json: @medicine_categroy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicine_categroys/1
  # PATCH/PUT /medicine_categroys/1.json
  def update
    respond_to do |format|
      if @medicine_categroy.update(medicine_categroy_params)
        format.html { redirect_to @medicine_categroy, notice: 'Medicine categroy was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicine_categroy }
      else
        format.html { render :edit }
        format.json { render json: @medicine_categroy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicine_categroys/1
  # DELETE /medicine_categroys/1.json
  def destroy
    @medicine_categroy.destroy
    respond_to do |format|
      format.html { redirect_to medicine_categroys_url, notice: 'Medicine categroy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicine_categroy
      @medicine_categroy = MedicineCategroy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medicine_categroy_params
      params.require(:medicine_categroy).permit(:name)
    end
end
