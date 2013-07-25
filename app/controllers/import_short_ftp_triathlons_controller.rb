class ImportShortFtpTriathlonsController < ApplicationController
  before_action :set_import_short_ftp_triathlon, only: [:show, :edit, :update, :destroy]

  # GET /import_short_ftp_triathlons
  # GET /import_short_ftp_triathlons.json
  def index
    @message = "This is the place to import triathlon pages!"

    @import_short_ftp_triathlons = ImportShortFtpTriathlon.all
  end

  # GET /import_short_ftp_triathlons/1
  # GET /import_short_ftp_triathlons/1.json
  def show
  end

  # GET /import_short_ftp_triathlons/new
  def new
    @import_short_ftp_triathlon = ImportShortFtpTriathlon.new
  end

  # GET /import_short_ftp_triathlons/1/edit
  def edit
  end

  # POST /import_short_ftp_triathlons
  # POST /import_short_ftp_triathlons.json
  def create
    @import_short_ftp_triathlon = ImportShortFtpTriathlon.new(import_short_ftp_triathlon_params)

    respond_to do |format|
      if @import_short_ftp_triathlon.save
        format.html { redirect_to @import_short_ftp_triathlon, notice: 'Import short ftp triathlon was successfully created.' }
        format.json { render action: 'show', status: :created, location: @import_short_ftp_triathlon }
      else
        format.html { render action: 'new' }
        format.json { render json: @import_short_ftp_triathlon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_short_ftp_triathlons/1
  # PATCH/PUT /import_short_ftp_triathlons/1.json
  def update
    respond_to do |format|
      if @import_short_ftp_triathlon.update(import_short_ftp_triathlon_params)
        format.html { redirect_to @import_short_ftp_triathlon, notice: 'Import short ftp triathlon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @import_short_ftp_triathlon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_short_ftp_triathlons/1
  # DELETE /import_short_ftp_triathlons/1.json
  def destroy
    @import_short_ftp_triathlon.destroy
    respond_to do |format|
      format.html { redirect_to import_short_ftp_triathlons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_short_ftp_triathlon
      @import_short_ftp_triathlon = ImportShortFtpTriathlon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_short_ftp_triathlon_params
      params.require(:import_short_ftp_triathlon).permit(:place, :ftp_number, :ftp_license, :athlete_name, :pen, :age_group_name, :team, :swimming_position, :swimming_time, :cycling_position, :cycling_time, :running_position, :running_time, :race_time)
    end
end
