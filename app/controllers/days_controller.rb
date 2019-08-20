class DaysController < ApplicationController
  before_action :find_day, only: [:show, :edit, :update]
  before_action :belongs_to_current_user?, only: [:show]
  helper_method :activity_selection

  def index
    @days = current_user.days
  end

  def new
    if current_user.day_started?
      redirect_to day_path(current_user.days.last)
    else
      @day = Day.new
      @day.diary_date = Date.today
      @day.user_id = current_user.id
      @day.save
      # byebug
      redirect_to day_path(@day)
    end
  end

  def add_sedentary_activity
    @day = Day.find(params[:day])
  end

  def create_sedentary_activity
    @day = Day.find(params[:format])
    activity_selection
    redirect_to dashboard_path
  end

  def add_exercise
    @day = Day.find(params[:day])
  end

  def create_exercise
    @day = Day.find(params[:format])
    exercise_selection
    redirect_to dashboard_path
  end

  def add_meal
    @day = Day.find(params[:day])
  end

  def create_meal
    @day = Day.find(params[:format])
    meal_selection
    redirect_to dashboard_path
  end

  def add_snack
    @day = Day.find(params[:day])
  end

  def create_snack
    @day = Day.find(params[:format])
    snack_selection
    redirect_to dashboard_path
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def find_day
    if params[:user]
      @day = Day.find(params[:user][:day_ids])
    else
      @day = Day.find(params[:id])
    end
  end

  def activity_selection
    activities = params[:day][:sedentary_activity_ids]
    activities.delete("")
    activities.map { |activity_id| @day.sedentary_activities << SedentaryActivity.find(activity_id) }
  end

  def exercise_selection
    exercises = params[:day][:exercise_ids]
    exercises.delete("")
    exercises.map { |exercise_id| @day.exercises << Exercise.find(exercise_id) }
  end

  def meal_selection
    meals = params[:day][:meal_ids]
    meals.delete("")
    meals.map { |meal_id| @day.meals << Meal.find(meal_id) }
  end

  def snack_selection
    snacks = params[:day][:snack_ids]
    snacks.delete("")
    snacks.map { |snack_id| @day.snacks << Snack.find(snack_id) }
  end

  def belongs_to_current_user?
    unless @day.user == current_user
      redirect_to days_path
    end
  end
end
