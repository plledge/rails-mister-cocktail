class CocktailsController < ApplicationController

  before_action :set_cocktail, only: %i[show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    # check set_cocktail method
    @dose = Dose.new
    #        No route matches {:action=>"new", :cocktail_id=>431, :controller=>"doses"}
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail, notice: 'Cocktail saved'
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
        # pegue a hash cocktails dentro de params e só permita os campos abaixo
    # (qualquer outro não passará)
    params.require(:cocktail).permit(:name, :photo)
  end

end
