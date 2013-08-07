class ImportResultsFromUrlsController < ApplicationController
  before_action :set_import_results_from_url, only: [:show, :edit, :update, :destroy]

  def startup_params
    params.require(startup).permit(:race_type_id)
  end

  # GET /import_results_from_urls
  # GET /import_results_from_urls.json
  def index
    @import_results_from_urls = ImportResultsFromUrl.all
  end

  # GET /import_results_from_urls/1
  # GET /import_results_from_urls/1.json
  def show
  end

  # GET /import_results_from_urls/new
  def new
    @import_results_from_url = ImportResultsFromUrl.new
    @race_types = RaceType.all
  end

  # GET /import_results_from_urls/1/edit
  def edit
  end

  # POST /import_results_from_urls
  # POST /import_results_from_urls.json
  def create
    @import_results_from_url = ImportResultsFromUrl.new(import_results_from_url_params)

    respond_to do |format|
      if @import_results_from_url.save
        format.html { redirect_to @import_results_from_url, notice: 'Import results from url was successfully created.' }
        format.json { render action: 'show', status: :created, location: @import_results_from_url }
      else
        format.html { render action: 'new' }
        format.json { render json: @import_results_from_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_results_from_urls/1
  # PATCH/PUT /import_results_from_urls/1.json
  def update
    respond_to do |format|
      if @import_results_from_url.update(import_results_from_url_params)
        format.html { redirect_to @import_results_from_url, notice: 'Import results from url was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @import_results_from_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_results_from_urls/1
  # DELETE /import_results_from_urls/1.json
  def destroy
    @import_results_from_url.destroy
    respond_to do |format|
      format.html { redirect_to import_results_from_urls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_results_from_url
      @import_results_from_url = ImportResultsFromUrl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_results_from_url_params
      params.require(:import_results_from_url).permit(:url, :import_type, :race_type_id, :competition_id, :global_race_id, :id)
    end
end
