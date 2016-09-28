class CualquierasController < ApplicationController
  before_action :set_cualquiera, only: [:show, :edit, :update, :destroy]

  # GET /cualquieras
  # GET /cualquieras.json
  def index
    @cualquieras = Cualquiera.all
  end

  # GET /cualquieras/1
  # GET /cualquieras/1.json
  def show
  end

  # GET /cualquieras/new
  def new
    @cualquiera = Cualquiera.new
  end

  # GET /cualquieras/1/edit
  def edit
  end

  # POST /cualquieras
  # POST /cualquieras.json
  def create
    @cualquiera = Cualquiera.new(cualquiera_params)

    respond_to do |format|
      if @cualquiera.save
        format.html { redirect_to @cualquiera, notice: 'Cualquiera was successfully created.' }
        format.json { render :show, status: :created, location: @cualquiera }
      else
        format.html { render :new }
        format.json { render json: @cualquiera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cualquieras/1
  # PATCH/PUT /cualquieras/1.json
  def update
    respond_to do |format|
      if @cualquiera.update(cualquiera_params)
        format.html { redirect_to @cualquiera, notice: 'Cualquiera was successfully updated.' }
        format.json { render :show, status: :ok, location: @cualquiera }
      else
        format.html { render :edit }
        format.json { render json: @cualquiera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cualquieras/1
  # DELETE /cualquieras/1.json
  def destroy
    @cualquiera.destroy
    respond_to do |format|
      format.html { redirect_to cualquieras_url, notice: 'Cualquiera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cualquiera
      @cualquiera = Cualquiera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cualquiera_params
      params.require(:cualquiera).permit(:columna1)
    end
end
