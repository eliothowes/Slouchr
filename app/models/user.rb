class User < ApplicationRecord
  has_many :days
  has_many :day_sedentary_activities, through: :days
  has_many :sedentary_activities, through: :day_sedentary_activities
  has_many :day_exercises, through: :days
  has_many :exercises, through: :day_exercises
  has_many :day_meals, through: :days
  has_many :meals, through: :day_meals
  has_many :meal_ingredients, through: :meals
  has_many :ingredients, through: :meal_ingredients
  has_many :day_snacks, through: :days
  has_many :snacks, through: :day_snacks

  validates :username, uniqueness: true, presence: true
  validates :age, numericality: { greater_than: 17, less_than: 110 }
  validates :password, length: { in: 6..20 }
  validates :height, numericality: { greater_than: 90, less_than: 210 }
  validates :weight, numericality: { greater_than: 65, less_than: 500 }

  has_secure_password

  def first_name
    self.name.split(" ").first
  end

  def day_started?
    self.days.any? { |day| day.diary_date == DateTime.now.to_date }
  end

  def get_current_date
    self.days.select { |day| day.diary_date == DateTime.now.to_date }.first
  end

  def macros_consumed_for_meals
    macros = []
    macros << self.get_current_date.meals.sum { |meal| meal.total_protein }
    macros << self.get_current_date.meals.sum { |meal| meal.total_fat }
    macros << self.get_current_date.meals.sum { |meal| meal.total_carbs }
    macros
  end

  def calories_consumed_for_meals
    self.get_current_date.meals.sum { |meal| meal.total_calories }
  end

  def macros_consumed_for_snacks
    macros = []
    macros << self.get_current_date.snacks.sum { |snack| snack.protein }
    macros << self.get_current_date.snacks.sum { |snack| snack.fat }
    macros << self.get_current_date.snacks.sum { |snack| snack.carbs }
    macros
  end

  def calories_consumed_for_snacks
    self.get_current_date.snacks.sum { |snack| snack.calories }
  end

  def combined_macros
    macros_consumed_for_meals.zip(macros_consumed_for_snacks).map { |v| v.reduce(:+) }
  end


  def calories_burned_through_sedentary
    self.get_current_date.sedentary_activities.sum { |sedentary| sedentary.calories }
  end

  def calories_burned_through_exercises
    self.get_current_date.exercises.sum { |exercise| exercise.calories }
  end

  def progress_bar
    if calories_consumed_for_meals > 0 || calories_consumed_for_snacks > 0
      percent = []
      calories_gained = calories_consumed_for_meals + calories_consumed_for_snacks
      calories_burned = calories_burned_through_sedentary + calories_burned_through_exercises
      total_calories = calories_burned + calories_gained
      percent << ((calories_gained.to_f/ total_calories.to_f)*100).round(0)
      percent << ((calories_burned.to_f / total_calories.to_f)*100).round(0)
      percent
    end
  end


end
