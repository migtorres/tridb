class TriathlonRacesController < ApplicationController
  # GET /triathlon_races
  # GET /triathlon_races.json
  def index
    @triathlon_races = TriathlonRace.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @triathlon_races }
    end
  end

  # GET /triathlon_races/1
  # GET /triathlon_races/1.json
  def show
    @triathlon_race = TriathlonRace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @triathlon_race }
    end
  end

  # GET /triathlon_races/new
  # GET /triathlon_races/new.json
  def new
    @triathlon_race = TriathlonRace.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @triathlon_race }
    end
  end

  # GET /triathlon_races/1/edit
  def edit
    @triathlon_race = TriathlonRace.find(params[:id])
  end

  # POST /triathlon_races
  # POST /triathlon_races.json
  def create
    @triathlon_race = TriathlonRace.new(params[:triathlon_race])

    respond_to do |format|
      if @triathlon_race.save
        format.html { redirect_to @triathlon_race, notice: 'Triathlon race was successfully created.' }
        format.json { render json: @triathlon_race, status: :created, location: @triathlon_race }
      else
        format.html { render action: "new" }
        format.json { render json: @triathlon_race.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /triathlon_races/1
  # PUT /triathlon_races/1.json
  def update
    @triathlon_race = TriathlonRace.find(params[:id])

    respond_to do |format|
      if @triathlon_race.update_attributes(params[:triathlon_race])
        format.html { redirect_to @triathlon_race, notice: 'Triathlon race was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @triathlon_race.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /triathlon_races/1
  # DELETE /triathlon_races/1.json
  def destroy
    @triathlon_race = TriathlonRace.find(params[:id])
    @triathlon_race.destroy

    respond_to do |format|
      format.html { redirect_to triathlon_races_url }
      format.json { head :no_content }
    end
  end
end
