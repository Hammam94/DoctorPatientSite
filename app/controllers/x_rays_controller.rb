class XRaysController < ApplicationController
  before_action :set_x_ray, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  # GET /x_rays
  # GET /x_rays.json
  def index
    @x_rays = XRay.all
  end

  # GET /x_rays/1
  # GET /x_rays/1.json
  def show
  end

  # GET /x_rays/new
  def new

    @x_ray = XRay.new

  end

  # GET /x_rays/1/edit
  def edit
  end

  # POST /x_rays
  # POST /x_rays.json
  def create
    @x_ray = XRay.create(x_ray_params)
    respond_to do |format|
      if @x_ray.save
        format.html { redirect_to @x_ray, notice: 'X ray was successfully created.' }
        format.json { render :show, status: :created, location: @x_ray }
      else
        format.html { render :new }
        format.json { render json: @x_ray.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /x_rays/1
  # PATCH/PUT /x_rays/1.json
  def update
    respond_to do |format|
      if @x_ray.update(x_ray_params)
        format.html { redirect_to @x_ray, notice: 'X ray was successfully updated.' }
        format.json { render :show, status: :ok, location: @x_ray }
      else
        format.html { render :edit }
        format.json { render json: @x_ray.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /x_rays/1
  # DELETE /x_rays/1.json
  def destroy
    @x_ray.destroy
    respond_to do |format|
      format.html { redirect_to x_rays_url, notice: 'X ray was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_x_ray
      @x_ray = XRay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def x_ray_params
      params.require(:x_ray).permit(:rays_name, :results, :comments, :record_id)
    end
end
