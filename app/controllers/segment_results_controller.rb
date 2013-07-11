class SegmentResultsController < ApplicationController
  before_action :set_segment_result, only: [:show, :edit, :update, :destroy]

  # GET /segment_results
  # GET /segment_results.json
  def index
    @segment_results = SegmentResult.all
  end

  # GET /segment_results/1
  # GET /segment_results/1.json
  def show
  end

  # GET /segment_results/new
  def new
    @segment_result = SegmentResult.new
  end

  # GET /segment_results/1/edit
  def edit
  end

  # POST /segment_results
  # POST /segment_results.json
  def create
    @segment_result = SegmentResult.new(segment_result_params)

    respond_to do |format|
      if @segment_result.save
        format.html { redirect_to @segment_result, notice: 'Segment result was successfully created.' }
        format.json { render action: 'show', status: :created, location: @segment_result }
      else
        format.html { render action: 'new' }
        format.json { render json: @segment_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /segment_results/1
  # PATCH/PUT /segment_results/1.json
  def update
    respond_to do |format|
      if @segment_result.update(segment_result_params)
        format.html { redirect_to @segment_result, notice: 'Segment result was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @segment_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /segment_results/1
  # DELETE /segment_results/1.json
  def destroy
    @segment_result.destroy
    respond_to do |format|
      format.html { redirect_to segment_results_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segment_result
      @segment_result = SegmentResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def segment_result_params
      params.require(:segment_result).permit(:athlete_id, :segment_id, :place, :time, :age_group_id, :class_id)
    end
end
