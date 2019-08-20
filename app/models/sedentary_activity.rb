class SedentaryActivity < ApplicationRecord
  has_many :day_sedentary_activities
  has_many :days, through: :day_sedentary_activities
end
