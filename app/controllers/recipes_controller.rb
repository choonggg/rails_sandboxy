class RecipesController < ApplicationController
  def index
  end

  def show

  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    end
  end
  
  private

  def recipe_params
    params.require(:recipes).permit(:title, :description)
  end
end
