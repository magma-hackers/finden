class InformationPersonalsController < ApplicationController
  before_action :set_information_personal, only: [:show, :edit, :update, :destroy]

  # GET /information_personals
  # GET /information_personals.json
  def index
    @information_personals = InformationPersonal.find_by(user_id: current_user.id)
  end

  # GET /information_personals/1
  # GET /information_personals/1.json
  def show
    redirect_to information_personals_path
  end

  # GET /information_personals/new
  def new
    @user_exist = InformationPersonal.find_by(user_id: current_user.id)

    if !@user_exist
      @information_personal = InformationPersonal.new
    else
      redirect_to information_personals_path
    end
  end

  # GET /information_personals/1/edit
  def edit
  end

  # POST /information_personals
  # POST /information_personals.json
  def create
    @information_personal = InformationPersonal.new(information_personal_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @information_personal.save
        format.html { redirect_to @information_personal, notice: t('personal_info.create_message') }
        format.json { render :show, status: :created, location: @information_personal }
      else
        format.html { render :new }
        format.json { render json: @information_personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /information_personals/1
  # PATCH/PUT /information_personals/1.json
  def update
    respond_to do |format|
      if @information_personal.update(information_personal_params)
        format.html { redirect_to @information_personal, notice: t('personal_info.update_message') }
        format.json { render :show, status: :ok, location: @information_personal }
      else
        format.html { render :edit }
        format.json { render json: @information_personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /information_personals/1
  # DELETE /information_personals/1.json
  def destroy
    @information_personal.destroy
    respond_to do |format|
      format.html { redirect_to information_personals_url, notice: t('personal_info.destroy_message') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_information_personal
      @information_personal = InformationPersonal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def information_personal_params
      params.require(:information_personal).permit(:name, :birth_place, :born_date, :weight, :height, :gender, :club)
    end
end
