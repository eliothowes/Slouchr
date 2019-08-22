class MealsController < ApplicationController
  before_action :is_admin?, only: [:index, :show, :edit]
  before_action :find_meal, only: [:show, :edit, :update, :destroy] 
  helper_method :ingredient_selection

  def index
    @meals = Meal.all
  end
  
  def decision
  end

  def new
    @meal = Meal.new
  end

  def stock_meal
    @meal = Meal.new
  end

  def show
  end

  def create
    @meal = Meal.new
    @day = current_user.get_current_date
      if params[:meal][:ingredient_ids]       
        @meal.name = params[:meal][:name]
        ingredient_selection
        @meal.calculate_nutrition_totals
        @meal.save
        redirect_to add_meal_path(current_user, day: @day.id)
      else
        @meal = Meal.new(meal_params)
        @meal.save
        redirect_to add_meal_path(current_user, day: @day.id)
      end
  end

  def edit
  end

  def update
    if @meal.ingredients[0]
        @meal.name = params[:meal][:name]
        @meal.ingredients = []
        ingredient_selection
        @meal.calculate_nutrition_totals
        @meal.save
    elsif @meal.ingredients.empty?
        @meal.update(meal_params)
    end

    if @meal.valid?
      redirect_to meal_path(@meal)
    else
      render :edit
    end
  end

  def destroy
    Meal.destroy(@meal.id)
    redirect_to meals_path
  end

  private

  def find_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :total_calories, :total_protein, :total_fat, :total_carbs)
  end

  def ingredient_selection
    ingredients = params[:meal][:ingredient_ids]
    ingredients.delete("")
    ingredients.map {|ingredient_id| @meal.ingredients << Ingredient.find(ingredient_id)}
  end

end
