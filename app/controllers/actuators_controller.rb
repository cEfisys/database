class ActuatorsController < ApplicationController
  before_action :set_actuator, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user

  # GET /actuators
  # GET /actuators.json
  def index
    if(current_user.isAdmin)
      @actuators = Actuator.all
    else
      @actuators = Actuator.green_kub_box.where(:user_id => current_user)
    end

  end

  # GET /actuators/1
  # GET /actuators/1.json
  def show
  end

  # GET /actuators/new
  def new
    @actuator = Actuator.new
  end

  # GET /actuators/1/edit
  def edit
  end

  # POST /actuators
  # POST /actuators.json
  def create
    @actuator = Actuator.new(actuator_params)

    respond_to do |format|
      if @actuator.save
        format.html { redirect_to @actuator, notice: 'Actuator was successfully created.' }
        format.json { render :show, status: :created, location: @actuator }
      else
        format.html { render :new }
        format.json { render json: @actuator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actuators/1
  # PATCH/PUT /actuators/1.json
  def update
    respond_to do |format|
      if @actuator.update(actuator_params)
        format.html { redirect_to @actuator, notice: 'Actuator was successfully updated.' }
        format.json { render :show, status: :ok, location: @actuator }
      else
        format.html { render :edit }
        format.json { render json: @actuator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actuators/1
  # DELETE /actuators/1.json
  def destroy
    @actuator.destroy
    respond_to do |format|
      format.html { redirect_to actuators_url, notice: 'Actuator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actuator
      @actuator = Actuator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actuator_params
      params.require(:actuator).permit(:ref, :state, :actuator_type_id, :green_kub_box_id)
    end
end
