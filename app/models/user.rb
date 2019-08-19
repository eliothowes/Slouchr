class User < ApplicationRecord
  has_many :days
  has_many :day_sedentary_activities, through: :days
  has_many :sedentary_activities, through: :day_sedentary_activities
  has_many :day_exercises
  has_many :exercises, through: :day_exercises
  has_many :meals
  has_many :meal_ingredients, through: :meals
  has_many :ingredients, through: :meal_ingredients

  validates :username, uniqueness: true, presence: true
  validates :age, numericality: { greater_than: 17, less_than: 110 }
  validates :bio, length: { minimum: 15, maximum: 500 }
  validates :password, length: { in: 6..20 }
  validates :height, numericality: {greater_than: 90, less_than: 210 }
  validates :weight, numericality: { greater_than: 65, less_than: 500 }
  
end
