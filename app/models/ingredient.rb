class Ingredient < ApplicationRecord
  has_many :meal_ingredients

  validates :name, presence: true
  validates :calories, presence: true
  validates :protein, presence: true
  validates :fat, presence: true
  validates :carbs, presence: true
end
