class BonesSegmentsController < ApplicationController
  before_action :set_bones_segment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  # GET /bones_segments
  # GET /bones_segments.json
  def index
    @bones_segments = BonesSegment.all
  end

  # GET /bones_segments/1
  # GET /bones_segments/1.json
  def show
  end

  # GET /bones_segments/new
  def new
    @bones_segment = BonesSegment.new
  end

  # GET /bones_segments/1/edit
  def edit
  end

  # POST /bones_segments
  # POST /bones_segments.json
  def create
    @bones_segment = BonesSegment.new(bones_segment_params)

    respond_to do |format|
      if @bones_segment.save
        format.html { redirect_to @bones_segment, notice: 'Bones segment was successfully created.' }
        format.json { render :show, status: :created, location: @bones_segment }
      else
        format.html { render :new }
        format.json { render json: @bones_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bones_segments/1
  # PATCH/PUT /bones_segments/1.json
  def update
    respond_to do |format|
      if @bones_segment.update(bones_segment_params)
        format.html { redirect_to @bones_segment, notice: 'Bones segment was successfully updated.' }
        format.json { render :show, status: :ok, location: @bones_segment }
      else
        format.html { render :edit }
        format.json { render json: @bones_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bones_segments/1
  # DELETE /bones_segments/1.json
  def destroy
    @bones_segment.destroy
    respond_to do |format|
      format.html { redirect_to bones_segments_url, notice: 'Bones segment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bones_segment
      @bones_segment = BonesSegment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bones_segment_params
      params.require(:bones_segment).permit(:name, :company_id, :description)
    end
end
