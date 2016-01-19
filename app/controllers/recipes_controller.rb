class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end
  

  def meal
    @recipe = Recipe.last
  end
  
end
