class SensorActuatorInfosController < ApplicationController
  before_action :set_sensor_actuator_info, only: [:show, :edit, :update, :destroy]

  # GET /sensor_actuator_infos
  # GET /sensor_actuator_infos.json
  def index
    @sensor_actuator_infos = SensorActuatorInfo.all
  end

  # GET /sensor_actuator_infos/1
  # GET /sensor_actuator_infos/1.json
  def show
  end

  # GET /sensor_actuator_infos/new
  def new
    @sensor_actuator_info = SensorActuatorInfo.new
  end

  # GET /sensor_actuator_infos/1/edit
  def edit
  end

  # POST /sensor_actuator_infos
  # POST /sensor_actuator_infos.json
  def create
    @sensor_actuator_info = SensorActuatorInfo.new(sensor_actuator_info_params)

    respond_to do |format|
      if @sensor_actuator_info.save
        format.html { redirect_to @sensor_actuator_info, notice: 'Sensor actuator info was successfully created.' }
        format.json { render :show, status: :created, location: @sensor_actuator_info }
      else
        format.html { render :new }
        format.json { render json: @sensor_actuator_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensor_actuator_infos/1
  # PATCH/PUT /sensor_actuator_infos/1.json
  def update
    respond_to do |format|
      if @sensor_actuator_info.update(sensor_actuator_info_params)
        format.html { redirect_to @sensor_actuator_info, notice: 'Sensor actuator info was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor_actuator_info }
      else
        format.html { render :edit }
        format.json { render json: @sensor_actuator_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensor_actuator_infos/1
  # DELETE /sensor_actuator_infos/1.json
  def destroy
    @sensor_actuator_info.destroy
    respond_to do |format|
      format.html { redirect_to sensor_actuator_infos_url, notice: 'Sensor actuator info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor_actuator_info
      @sensor_actuator_info = SensorActuatorInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensor_actuator_info_params
      params.require(:sensor_actuator_info).permit(:sensor_id, :value, :date)
    end
end
