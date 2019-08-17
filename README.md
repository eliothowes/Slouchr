# Module 2 Final Project: Slouchr

Harry Chopra & Eliot Howes

# Models and Relationship

	 User  —<   Day —<  Day_Sedentary_Activity  >—  Sedentary_Activity

			         —<   Day_Exercise  >—  Exercise 

		         	     —<  Meal  —<  Meal_Ingredient  >—    Ingredient
			     
             
# Associations

__*User*__
has_many :days
has_many :day_sedentary_activities, through: :days
has_many :sedentary_activities, through: :day_sedentary_activities
has_many :day_exercises 
has_many :exercises, through: :day_exercises
has_many :meals
has_many :meal_ingredients, through: :meals
has_many :ingredients, through: :meal_ingredients


__*Day*__
belongs_to :user
has_many :day_sedentary_activities
has_many :sedentary_activities, through: :day_sedentary_activities
has_many :day_exercises 
has_many :exercises, through: :day_exercises
has_many :meals
has_many :meal_ingredients, through: :meals
has_many :ingredients, through: :meal_ingredients


__*Day_Sedentary_Activity*__
belongs_to :day
has_many :sedentary_activities


__*Sedentary_Activity*__
belongs_to :day_sedentary_activity


__*Day_Exercise*__
belongs_to :day
has_many :exercises


__*Exercise*__
belongs_to :day_exercise


__*Meal*__
belongs_to :day
has_many :meal_ingredients
has_many :ingredients, through: :meal_ingredients


__*Meal_ingredient*__
belongs_to :meal
has_many :ingredients

__*Ingredient*__
belongs_to :meal_ingredient

							     
