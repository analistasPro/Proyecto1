class DireccionsController < ApplicationController
  before_action :set_direccion, only: [:show, :edit, :update, :destroy]

  # GET /direccions
  # GET /direccions.json
  def index
    @direccions = Direccion.recientes.all
  end

  # GET /direccions/1
  # GET /direccions/1.json
  def show
  end

  # GET /direccions/new
  def new
    @direccion = Direccion.new
  end

  # GET /direccions/1/edit
  def edit
  end

  # POST /direccions
  # POST /direccions.json
  def create
    @direccion = Direccion.new(direccion_params)

    respond_to do |format|
      if @direccion.save
        format.html { redirect_to @direccion, notice: 'Direccion was successfully created.' }
        format.json { render :show, status: :created, location: @direccion }
      else
        format.html { render :new }
        format.json { render json: @direccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /direccions/1
  # PATCH/PUT /direccions/1.json
  def update
    respond_to do |format|
      if @direccion.update(direccion_params)
        format.html { redirect_to @direccion, notice: 'Direccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @direccion }
      else
        format.html { render :edit }
        format.json { render json: @direccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /direccions/1
  # DELETE /direccions/1.json
  def destroy
    @direccion.destroy
    respond_to do |format|
      format.html { redirect_to direccions_url, notice: 'Direccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direccion
      @direccion = Direccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def direccion_params
      params.require(:direccion).permit(:calle, :numero, :comuna, :cuidad, :pais, :usuarios_id)
    end
end
