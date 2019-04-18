class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    # render json: @recipes, include: :ingredients
  end

  
end
