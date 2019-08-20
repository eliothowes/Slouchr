class Exercise < ApplicationRecord
  has_many :day_exercises
  has_many :days, through: :day_exercises
end
