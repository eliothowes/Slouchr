class Snack < ApplicationRecord
  has_many :day_snacks
  has_many :days, through: :day_snacks
end
