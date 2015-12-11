  class GreenKubBoxesController < ApplicationController
  before_action :set_green_kub_box, only: [:show, :edit, :update, :destroy]

  # GET /green_kub_boxes
  # GET /green_kub_boxes.json
  def index
    @green_kub_boxes = GreenKubBox.all
  end

  # GET /green_kub_boxes/1
  # GET /green_kub_boxes/1.json
  def show
  end

  # GET /green_kub_boxes/new
  def new
    @green_kub_box = GreenKubBox.new
  end

  # GET /green_kub_boxes/1/edit
  def edit
  end

  # POST /green_kub_boxes
  # POST /green_kub_boxes.json
  def create
    @green_kub_box = GreenKubBox.new(green_kub_box_params)

    respond_to do |format|
      if @green_kub_box.save
        format.html { redirect_to @green_kub_box, notice: 'Green kub box was successfully created.' }
        format.json { render :show, status: :created, location: @green_kub_box }
      else
        format.html { render :new }
        format.json { render json: @green_kub_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /green_kub_boxes/1
  # PATCH/PUT /green_kub_boxes/1.json
  def update
    respond_to do |format|
      if @green_kub_box.update(green_kub_box_params)
        format.html { redirect_to @green_kub_box, notice: 'Green kub box was successfully updated.' }
        format.json { render :show, status: :ok, location: @green_kub_box }
      else
        format.html { render :edit }
        format.json { render json: @green_kub_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /green_kub_boxes/1
  # DELETE /green_kub_boxes/1.json
  def destroy
    @green_kub_box.destroy
    respond_to do |format|
      format.html { redirect_to green_kub_boxes_url, notice: 'Green kub box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_green_kub_box
      @green_kub_box = GreenKubBox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def green_kub_box_params
      params[:green_kub_box]
    end
end
