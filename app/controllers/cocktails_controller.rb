class CocktailsController < ApplicationController

  def index
    @cockstails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path
  end

  def edit
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def update
    @cocktail = Cocktail.find(params[:cocktail_id])
    @cocktail.update(params[:cocktail_id])
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @cocktail.destroy
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name)
   end
end
