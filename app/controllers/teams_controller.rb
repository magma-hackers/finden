class TeamsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.where(user_id: current_user.id)
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    redirect_to teams_path
  end

  # GET /teams/new
  def new
    @user_exist = Team.find_by(user_id: current_user.id)

    if !@user_exist
      @team = Team.new
    else
      redirect_to teams_path
    end
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params.merge(user_id: current_user.id))    
    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: t('team.team_created') }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: t('team.team_update') }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: t('team.team_destroy') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :principal_position, :start_date, :end_date)
    end
end
