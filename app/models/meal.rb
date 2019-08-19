class Meal < ApplicationRecord
  belongs_to :day
  has_many :meal_ingredients
  has_many :ingredients, through: :meal_ingredients

  def calculate_nutrition_totals
#  byebug
    self.total_calories = self.ingredients.sum do |ingredient|
      ingredient.calories
    end
    self.total_protein = self.ingredients.sum do |ingredient|
      ingredient.protein
    end
    self.total_fat = self.ingredients.sum do |ingredient|
      ingredient.fat
    end
    self.total_carbs = self.ingredients.sum do |ingredient|
      ingredient.carbs
    end
    
  end
end


