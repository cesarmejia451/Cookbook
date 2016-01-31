class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all

    if params[:sort]
      @recipes = Recipe.order(:preptime)
    end
  end

  def show
    @recipe = Recipe.find(params[:id])

    @ingredient_list = @recipe.ingredient_list
    @directions_list = @recipe.directions_list

  end

  def new
  end

  def create
    @recipe = Recipe.create({title: params[:title], user_id: current_user.id, ingredients: params[:ingredients], directions: params[:directions], image: params[:image], preptime: params[:preptime]})

    flash[:success] = "New Recipe Created!"
    redirect_to "/recipes"
  end

  def edit
    @recipe= Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.update({title: params[:title], user_id: current_user.id, ingredients: params[:ingredients], directions: params[:directions], image: params[:image], preptime: params[:preptime]})

    flash[:success] = "Recipe Updated!"
    redirect_to "/recipes/#{@recipe.id}"
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    flash[:success] = "Recipe was successfully removed"
    redirect_to "/recipes"
  end
  
end
