class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    # render json: @recipes, include: :ingredients
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create  
    puts params
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end

  private

    def recipe_params
      params.require(:recipe).permit(:name, :ingredient_ids => [])
    end


end
