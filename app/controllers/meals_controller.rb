class MealsController < ApplicationController
  before_action :find_meal, only: [:show, :edit, :update] 

  def index
    @meals = Meal.all
  end
  
  def decision
  end

  def new
    @meal = Meal.new
  end

  def stock_meal
    @meal = Meal.new()
  end

  def show
  end

  def create
    @meal = Meal.new
      if params[:meal][:ingredient_ids]
        ingredients = params[:meal][:ingredient_ids]
          ingredients.delete("")
          ingredients.map {|ingredient_id| 
          @meal.ingredients << Ingredient.find(ingredient_id)
          }
        @meal.name = params[:meal][:name]
        @meal.calculate_nutrition_totals
        ######Need to Manage this at a later date######
        @meal.day_id = 1
        ######Need to Manage this at a later date######
        @meal.save
      else
        @meal = Meal.new(meal_params)
        ######Need to Manage this at a later date######
        @meal.day_id = 1
        ######Need to Manage this at a later date######
        @meal.save
      end
    redirect_to meals_path
  end

  def edit
  end

  private

  def find_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :total_calories, :total_protein, :total_fat, :total_carbs)
  end

end
