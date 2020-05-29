class DosesController < ApplicationController

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail), notice: 'Dose saved'
    else
      render "cocktails/new"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
        # pegue a hash doses dentro de params e só permita os campos abaixo
    # (qualquer outro não passará)
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
