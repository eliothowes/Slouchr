class User < ApplicationRecord
  has_many :days
  has_many :day_sedentary_activities, through: :days
  has_many :sedentary_activities, through: :day_sedentary_activities
  has_many :day_exercises
  has_many :exercises, through: :day_exercises
  has_many :meals
  has_many :meal_ingredients, through: :meals
  has_many :ingredients, through: :meal_ingredients
end
