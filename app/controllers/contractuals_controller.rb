class ContractualsController < ApplicationController
  load_and_authorize_resource
  before_action :set_contractual, only: [:show, :edit, :update, :destroy]

  # GET /contractuals
  # GET /contractuals.json
  def index
    @contractuals = Contractual.all
  end

  # GET /contractuals/1
  # GET /contractuals/1.json
  def show
  end

  # GET /contractuals/new
  def new
    @contractual = Contractual.new
  end

  # GET /contractuals/1/edit
  def edit
  end

  # POST /contractuals
  # POST /contractuals.json
  def create
    @contractual = Contractual.new(contractual_params)

    respond_to do |format|
      if @contractual.save
        format.html { redirect_to @contractual, notice: t('contractual.save') }
        format.json { render :show, status: :created, location: @contractual }
      else
        format.html { render :new }
        format.json { render json: @contractual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contractuals/1
  # PATCH/PUT /contractuals/1.json
  def update
    respond_to do |format|
      if @contractual.update(contractual_params)
        format.html { redirect_to @contractual, notice: t('contractual.update') }
        format.json { render :show, status: :ok, location: @contractual }
      else
        format.html { render :edit }
        format.json { render json: @contractual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contractuals/1
  # DELETE /contractuals/1.json
  def destroy
    @contractual.destroy
    respond_to do |format|
      format.html { redirect_to contractuals_url, notice: t('contractual.destroy') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractual
      @contractual = Contractual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contractual_params
      params.require(:contractual).permit(:player_type, :agent, :nui)
    end
end
