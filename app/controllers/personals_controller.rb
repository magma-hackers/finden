class PersonalsController < ApplicationController
  def index
    @personals = Personal.all
  end

  def edit
  end

  def update
    respond_to do |format|
      if @personal.update(personal_params)
        format.html { redirect_to @personal, notice: t('personal.personal_update') }
        format.json { render :index, status: :ok, location: @personal }
      else
        format.html { render :edit }
        format.json { render json: @personal.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_personal
    @personal = Personal.find(params[:id])
  end

  def team_params
    params.require(:personal.permit(:first_name, :last_name, :nationality, :state, :city, :country, :date, :gender))
  end
end
