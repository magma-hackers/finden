class TechniquesController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :set_technique, only: [:show, :edit, :update, :destroy]

  # GET /techniques
  # GET /techniques.json
  def index
    @techniques = Technique.where(user_id: current_user.id)
  end

  # GET /techniques/1
  # GET /techniques/1.json
  def show
    redirect_to techniques_path
  end

  # GET /techniques/new
  def new
    @user_exist = Technique.find_by(user_id: current_user.id)

    if !@user_exist
      @technique = Technique.new
    else
      redirect_to techniques_path
    end
  end

  # GET /techniques/1/edit
  def edit
  end

  # POST /techniques
  # POST /techniques.json
  def create
    @technique = Technique.new(technique_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @technique.save
        format.html { redirect_to @technique, notice: t('technique.create_technique') }
        format.json { render :show, status: :created, location: @technique }
      else
        format.html { render :new }
        format.json { render json: @technique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /techniques/1
  # PATCH/PUT /techniques/1.json
  def update
    respond_to do |format|
      if @technique.update(technique_params)
        format.html { redirect_to @technique, notice: t('technique.update_technique') }
        format.json { render :show, status: :ok, location: @technique }
      else
        format.html { render :edit }
        format.json { render json: @technique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techniques/1
  # DELETE /techniques/1.json
  def destroy
    @technique.destroy
    respond_to do |format|
      format.html { redirect_to techniques_url, notice: t('technique.delete_technique') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technique
      @technique = Technique.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def technique_params
      params.require(:technique).permit(:principal_position, :secondary_position, :strong_foot)
    end
end
