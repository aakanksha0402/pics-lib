class ColorLogosController < ApplicationController
  before_action :set_color_logo, only: [:show, :edit, :update, :destroy]

  # GET /color_logos
  # GET /color_logos.json
  def index
    @color_logos = ColorLogo.all
  end

  # GET /color_logos/1
  # GET /color_logos/1.json
  def show
  end

  # GET /color_logos/new
  def new
    @color_logo = ColorLogo.new
  end

  # GET /color_logos/1/edit
  def edit
  end

  # POST /color_logos
  # POST /color_logos.json
  def create
    @color_logo = ColorLogo.new(color_logo_params)

    respond_to do |format|
      if @color_logo.save
        format.html { redirect_to @color_logo, notice: 'Color logo was successfully created.' }
        format.json { render :show, status: :created, location: @color_logo }
      else
        format.html { render :new }
        format.json { render json: @color_logo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /color_logos/1
  # PATCH/PUT /color_logos/1.json
  def update
    respond_to do |format|
      if @color_logo.update(color_logo_params)
        format.html { redirect_to @color_logo, notice: 'Color logo was successfully updated.' }
        format.json { render :show, status: :ok, location: @color_logo }
      else
        format.html { render :edit }
        format.json { render json: @color_logo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /color_logos/1
  # DELETE /color_logos/1.json
  def destroy
    @color_logo.destroy
    respond_to do |format|
      format.html { redirect_to color_logos_url, notice: 'Color logo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color_logo
      @color_logo = ColorLogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def color_logo_params
      params.require(:color_logo).permit(:user_id, :name, :font_set, :theme, :primary_color, :seconday_color, :default, :false})
    end
end
