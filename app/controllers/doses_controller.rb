class DosesController < ApplicationController
  before_action :set_dose, only: [:new, :create, :edit, :update, :destroy]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      redirect_to cocktail_path(@cocktail)
    end
  end

  def edit
    @dose = Dose.find(params[:id])
  end

  def update
    @dose = Dose.find(params[:id])
    @dose.update(dose_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.delete

    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:measurement, :ingredient_id)
  end

  def set_dose
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
