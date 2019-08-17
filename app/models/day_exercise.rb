class DayExercise < ApplicationRecord
  belongs_to :day
  has_many :exercises
end
