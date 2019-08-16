class DosesController < ApplicationController
  # before_action :find_cocktail

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    # @cocktail = Cocktail.new
  end

  def create
    # DOSE
    @dose = Dose.new(dose_params)

    @cocktail = Cocktail.find(params[:cocktail_id])
    #   COCKTAIL ID
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
