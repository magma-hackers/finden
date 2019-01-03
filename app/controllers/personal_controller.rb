class PersonalController < ApplicationController
  before_action :authenticate_user!

  def index
    @playerInformations = Personal.all
  end

  def new
    @playerInformation = current_user!
  end

  def update

  end

  def show

  end
end
