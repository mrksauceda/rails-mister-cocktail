class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  def show
    @dose = Dose.find(params[:ingredient_id])
  end

  def new
    @dose = Dose.find(params[:ingredient_id])
    @dose.save
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
  end

  def edit
    @dose = Dose.find(params[:ingredient_id])
  end

  def update
    @dose = Dose.find(params[:ingredient_id])
  end

  def destroy
    @dose = Dose.find(params[:ingredient_id])
    @dose.destroy
  end

  private

  def dose_params
    params.require(:ingredient_id).permit(:name)

  end
end
