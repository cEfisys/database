class ActuatorTypesController < ApplicationController
  before_action :set_actuator_type, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user

  # GET /actuator_types
  # GET /actuator_types.json
  def index
    @actuator_types = ActuatorType.all
  end

  # GET /actuator_types/1
  # GET /actuator_types/1.json
  def show
  end

  # GET /actuator_types/new
  def new
    @actuator_type = ActuatorType.new
  end

  # GET /actuator_types/1/edit
  def edit
  end

  # POST /actuator_types
  # POST /actuator_types.json
  def create
    @actuator_type = ActuatorType.new(actuator_type_params)

    respond_to do |format|
      if @actuator_type.save
        format.html { redirect_to @actuator_type, notice: 'Actuator type was successfully created.' }
        format.json { render :show, status: :created, location: @actuator_type }
      else
        format.html { render :new }
        format.json { render json: @actuator_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actuator_types/1
  # PATCH/PUT /actuator_types/1.json
  def update
    respond_to do |format|
      if @actuator_type.update(actuator_type_params)
        format.html { redirect_to @actuator_type, notice: 'Actuator type was successfully updated.' }
        format.json { render :show, status: :ok, location: @actuator_type }
      else
        format.html { render :edit }
        format.json { render json: @actuator_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actuator_types/1
  # DELETE /actuator_types/1.json
  def destroy
    @actuator_type.destroy
    respond_to do |format|
      format.html { redirect_to actuator_types_url, notice: 'Actuator type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actuator_type
      @actuator_type = ActuatorType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actuator_type_params
      params.require(:actuator_type).permit(:name, :caracteristics)
    end
end
