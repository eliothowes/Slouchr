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
  validates :bio, length: { minimum: 15, maximum: 500 }
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
   self.days.select{ |day| day.diary_date == DateTime.now.to_date }.first
  end

end

