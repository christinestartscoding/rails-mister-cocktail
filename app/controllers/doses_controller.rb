class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
    redirect_to '/cocktails'
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient, :description)
  end
end
