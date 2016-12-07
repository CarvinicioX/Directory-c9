class PollingStationsController < ApplicationController
  before_action :set_polling_station, only: [:show, :edit, :update, :destroy]

  # GET /polling_stations
  # GET /polling_stations.json
  def index
    @polling_stations = PollingStation.all
  end

  # GET /polling_stations/1
  # GET /polling_stations/1.json
  def show
  end

  # GET /polling_stations/new
  def new
    @polling_station = PollingStation.new
  end

  # GET /polling_stations/1/edit
  def edit
  end

  # POST /polling_stations
  # POST /polling_stations.json
  def create
    @polling_station = PollingStation.new(polling_station_params)

    respond_to do |format|
      if @polling_station.save
        format.html { redirect_to @polling_station, notice: 'Polling station was successfully created.' }
        format.json { render :show, status: :created, location: @polling_station }
      else
        format.html { render :new }
        format.json { render json: @polling_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polling_stations/1
  # PATCH/PUT /polling_stations/1.json
  def update
    respond_to do |format|
      if @polling_station.update(polling_station_params)
        format.html { redirect_to @polling_station, notice: 'Polling station was successfully updated.' }
        format.json { render :show, status: :ok, location: @polling_station }
      else
        format.html { render :edit }
        format.json { render json: @polling_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polling_stations/1
  # DELETE /polling_stations/1.json
  def destroy
    @polling_station.destroy
    respond_to do |format|
      format.html { redirect_to polling_stations_url, notice: 'Polling station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polling_station
      @polling_station = PollingStation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def polling_station_params
      params.require(:polling_station).permit(:sub_sector_id, :num_pollstat, :name)
    end
end
