class DaySedentaryActivity < ApplicationRecord
  belongs_to :day
  has_many :sedentary_activities
end
