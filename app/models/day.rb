class Day < ApplicationRecord
  belongs_to :user
  has_many :day_sedentary_activities
  has_many :sedentary_activities, through: :day_sedentary_activities
  has_many :day_exercises
  has_many :exercises, through: :day_exercises
  has_many :day_meals
  has_many :meals, through: :day_meals
  has_many :meal_ingredients, through: :meals
  has_many :ingredients, through: :meal_ingredients
  has_many :day_snacks
  has_many :snacks, through: :day_snacks

  def formatted
    self.diary_date.strftime("%A, %d %B %Y")
  end
end
