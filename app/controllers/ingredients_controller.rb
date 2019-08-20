class IngredientsController < ApplicationController
  before_action :is_admin?, only: [:index, :show, :edit]
  before_action :find_ingredient, only: [:show, :edit, :update, :destroy]

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def show
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    redirect_to ingredients_path
  end

  def edit
  end

  def update
    @ingredient.update(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end
  
  def destroy
    Ingredient.destroy(@ingredient.id)
    redirect_to ingredients_path
  end

  private

  def find_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :calories, :protein, :fat, :carbs)
  end


end
