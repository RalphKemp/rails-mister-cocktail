class DosesController < ApplicationController

 before_action :set_cocktail

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    dose_to_delete = Dose.find(params[:id])
    dose_to_delete.destroy
    redirect_to cocktails_path
  end


  private

  def review_params
    params.require(:dose).permit(:description)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end





