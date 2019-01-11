class ViewersController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :set_viewer, only: [:show, :edit, :update, :destroy]

  # GET /viewers
  # GET /viewers.json
  def index
    @viewers = Viewer.where(user_id: current_user.id)
  end

  # GET /viewers/1
  # GET /viewers/1.json
  def show
  end

  # GET /viewers/new
  def new
    @viewer = Viewer.new
    @search_club =  User.find(current_user.id).information_personal
    
    if @search_club == nil 
      redirect_to new_information_personal_path
    else
      @search_club = User.find(current_user.id).information_personal.club
    end
  end

  # GET /viewers/1/edit
  def edit
    @search_club = User.find(current_user.id).information_personal.club
  end

  # POST /viewers
  # POST /viewers.json
  def create
    @search_club = User.find(current_user.id).information_personal.club
    @viewer = Viewer.new(viewer_params.merge(user_id: current_user.id, club: @search_club))

    respond_to do |format|
      if @viewer.save
        format.html { redirect_to viewers_path, notice: t('visor.alert_succesful') }
        format.json { render :show, status: :created, location: @viewer }
      else
        format.html { render :new }
        format.json { render json: @viewer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /viewers/1
  # PATCH/PUT /viewers/1.json
  def update
    respond_to do |format|
      if @viewer.update(viewer_params)
        format.html { redirect_to @viewer, notice: t('visor.alert_update') }
        format.json { render :show, status: :ok, location: @viewer }
      else
        format.html { render :edit }
        format.json { render json: @viewer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viewers/1
  # DELETE /viewers/1.json
  def destroy
    @viewer.destroy
    respond_to do |format|
      format.html { redirect_to viewers_url, notice: t('visor.alert_delete') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viewer
      @viewer = Viewer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def viewer_params
      params.require(:viewer).permit(:name, :last_name, :birth, :telephone, :club)
    end
end
