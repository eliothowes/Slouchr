class MealIngredient < ApplicationRecord
  belongs_to :meal
  has_many :ingredients
end
