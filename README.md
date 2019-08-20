# Module 2 Final Project: Slouchr

Harry Chopra & Eliot Howes

# Models and Relationship

	 User  —<   Day —<  Day_Sedentary_Activity  >—  Sedentary_Activity

			         —<   Day_Exercise  >—  Exercise 

		         	 -<  Day_Meal  >-  Meal  —<  Meal_Ingredient  >—  Ingredient
			     
             
# Associations

__*User*__
has_many :days
  has_many :day_sedentary_activities, through: :days
  has_many :sedentary_activities, through: :day_sedentary_activities
  has_many :day_exercises, through: :days
  has_many :exercises, through: :day_exercises
  has_many :day_meals, through: :days
  has_many :meals, through: :day_meals
  has_many :meal_ingredients, through: :meals
  has_many :ingredients, through: :meal_ingredients

__*Day*__
belongs_to :user
  has_many :day_sedentary_activities
  has_many :sedentary_activities, through: :day_sedentary_activities
  has_many :day_exercises
  has_many :exercises, through: :day_exercises
  has_many :day_meals
  has_many :meals, through: :day_meals
  has_many :meal_ingredients, through: :meals
  has_many :ingredients, through: :meal_ingredients


__*Day_Sedentary_Activity*__
belongs_to :day
belongs_to :sedentary_activity

__*Sedentary_Activity*__
has_many :day_sedentary_activities
has_many :days, through: :day_sedentary_activities

__*Day_Exercise*__
belongs_to :day
belongs_to :exercise

__*Exercise*__
  has_many :day_exercises
  has_many :days, through: :day_exercises

__*Day_Meal*__
belongs_to :day
belongs_to :meal

__*Meal*__
has_many :day_meals
has_many :meal_ingredients
has_many :ingredients, through: :meal_ingredients

__*Meal_ingredient*__
belongs_to :meal
belongs_to :ingredient

__*Ingredient*__
has_many :meal_ingredients

							     
