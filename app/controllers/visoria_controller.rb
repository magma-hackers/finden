class VisoriaController < ApplicationController
  load_and_authorize_resource
  before_action :set_visorium, only: [:show, :edit, :update, :destroy]

  # GET /visoria
  # GET /visoria.json
  def index
    @visoria = Visorium.all
  end

  # GET /visoria/1
  # GET /visoria/1.json
  def show
  end

  # GET /visoria/new
  def new
    @visorium = Visorium.new
  end

  # GET /visoria/1/edit
  def edit
  end

  # POST /visoria
  # POST /visoria.json
  def create
    @visorium = Visorium.new(visorium_params)

    respond_to do |format|
      if @visorium.save
        format.html { redirect_to @visorium, notice: 'Visorium was successfully created.' }
        format.json { render :show, status: :created, location: @visorium }
      else
        format.html { render :new }
        format.json { render json: @visorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visoria/1
  # PATCH/PUT /visoria/1.json
  def update
    respond_to do |format|
      if @visorium.update(visorium_params)
        format.html { redirect_to @visorium, notice: 'Visorium was successfully updated.' }
        format.json { render :show, status: :ok, location: @visorium }
      else
        format.html { render :edit }
        format.json { render json: @visorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visoria/1
  # DELETE /visoria/1.json
  def destroy
    @visorium.destroy
    respond_to do |format|
      format.html { redirect_to visoria_url, notice: 'Visorium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visorium
      @visorium = Visorium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visorium_params
      params.require(:visorium).permit(:date, :place, :schedule, :club, :description, :category)
    end
end
