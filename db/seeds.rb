# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# #Users

User.create(name: "Harry Chopra", username: "harrychopra", password: "123456", age: 29, height: 187, weight: 187, bio: "This is my Bio. It is very interesting")
User.create(name: "Eliot Howes", username: "eliothowes", password: "123456", age: 28, height: 172, weight: 178, bio: "This is my Bio. It is very interesting")
User.create(name: "Rod Cardenas", username: "rokujo", password: "123456", age: 31, height: 175, weight: 160, bio: "This is my Bio. It is very interesting")
User.create(name: "Adnan Azim", username: "adnanazam", password: "123456", age: 28, height: 187, weight: 170, bio: "This is my Bio. It is very interesting")
User.create(name: "Nick Charlot", username: "whatever", password: "123456", age: 30, height: 180, weight: 180, bio: "This is my Bio. It is very interesting")

# #Days

Day.create(diary_date: "2019/08/1", user_id: 1)
Day.create(diary_date: "2019/08/2", user_id: 2)
Day.create(diary_date: "2019/08/3", user_id: 3)
Day.create(diary_date: "2019/08/4", user_id: 4)
Day.create(diary_date: "2019/08/5", user_id: 5)
Day.create(diary_date: "2019/08/6", user_id: 2)
Day.create(diary_date: "2019/08/7", user_id: 5)
Day.create(diary_date: "2019/08/8", user_id: 1)
Day.create(diary_date: "2019/08/9", user_id: 2)
Day.create(diary_date: "2019/08/10", user_id: 3)
Day.create(diary_date: "2019/08/11", user_id: 4)
Day.create(diary_date: "2019/08/12", user_id: 5)
Day.create(diary_date: "2019/08/13", user_id: 6)

# Exercises

Exercise.create(name: "Jogging", duration: 30, start_time: "2019/08/2 01:00:00", calories: 300)
Exercise.create(name: "Running", duration: 40, start_time: "2019/08/3 01:00:00", calories: 400)
Exercise.create(name: "Walking", duration: 35, start_time: "2019/08/4 01:00:00", calories: 500)
Exercise.create(name: "Elliptical", duration: 90, start_time: "2019/08/5 01:00:00", calories: 600)
Exercise.create(name: "Swimming", duration: 10, start_time: "2019/08/06 01:00:00", calories: 100)
Exercise.create(name: "Cycling", duration: 20, start_time: "2019/08/1 01:00:00", calories: 250)

# Sedentary Activities

SedentaryActivity.create(name: "Thinking about your worst life decisions", duration: 180, start_time: "2019/08/2 03:00:00", calories: 3)
SedentaryActivity.create(name: "Subscribing to a 100 mailing lists", duration: 200, start_time: "2019/08/2 04:00:00", calories: 2)
SedentaryActivity.create(name: "Picking arguments with random people of the internet", duration: 500, start_time: "2019/08/2 01:00:00", calories: 1)
SedentaryActivity.create(name: "Commenting/ Disliking selfies on Instagram", duration: 300, start_time: "2019/08/2 02:00:00", calories: 3)
SedentaryActivity.create(name: "Laying in bed all day but thinking about exercising", duration: 600, start_time: "2019/08/2 01:00:00", calories: 1)

# Day Exercise

DayExercise.create(day_id: 1, exercise_id: 1)
DayExercise.create(day_id: 2, exercise_id: 2)
DayExercise.create(day_id: 3, exercise_id: 3)
DayExercise.create(day_id: 4, exercise_id: 4)
DayExercise.create(day_id: 5, exercise_id: 5)
DayExercise.create(day_id: 6, exercise_id: 6)

# Day Sedentary Activities

DaySedentaryActivity.create(day_id: 7, sedentary_activity_id: 1)
DaySedentaryActivity.create(day_id: 8, sedentary_activity_id: 2)
DaySedentaryActivity.create(day_id: 9, sedentary_activity_id: 3)
DaySedentaryActivity.create(day_id: 10, sedentary_activity_id: 4)
DaySedentaryActivity.create(day_id: 11, sedentary_activity_id: 5)

# Meals

Meal.create(name: "Chicken and Avocado Sandwich", total_calories: 912, total_protein: 68, total_fat: 28, total_carbs: 91)
Meal.create(name: "Pasta Bolognese", total_calories: 1040, total_protein: 69, total_fat: 10, total_carbs: 47)
Meal.create(name: "Big Mac Meal", total_calories: 1780, total_protein: 56, total_fat: 76, total_carbs: 208)
Meal.create(name: "Big Daddy Box Meal", total_calories: 2808, total_protein: 113, total_fat: 138, total_carbs: 278)
Meal.create(name: "Snickers", total_calories: 500, total_protein: 8, total_fat: 24, total_carbs: 66)
Meal.create(name: "Monster Munch", total_calories: 394, total_protein: 5, total_fat: 20, total_carbs: 48)

# Day Meal
DayMeal.create(day_id: 1, meal_id: 1)
DayMeal.create(day_id: 2, meal_id: 2)
DayMeal.create(day_id: 3, meal_id: 3)
DayMeal.create(day_id: 4, meal_id: 4)
DayMeal.create(day_id: 5, meal_id: 5)
DayMeal.create(day_id: 6, meal_id: 6)

# Ingredients

Ingredient.create(name: "Chicken Breast", calories: 280, protein: 52, fat: 6, carbs: 0)
Ingredient.create(name: "Avocado", calories: 240, protein: 2, fat: 20, carbs: 11)
Ingredient.create(name: "Slice of Bread", calories: 196, protein: 7, fat: 1, carbs: 37)
Ingredient.create(name: "Rice", calories: 236, protein: 4, fat: 3, carbs: 45)
Ingredient.create(name: "Penne Pasta", calories: 592, protein: 4, fat: 0, carbs: 28)
Ingredient.create(name: "Minced Beef", calories: 336, protein: 62, fat: 9, carbs: 0)
Ingredient.create(name: "Pasta Sauce", calories: 112, protein: 3, fat: 1, carbs: 19)

# Meal_Ingredients

MealIngredient.create(meal_id: 1, ingredient_id: 1)
MealIngredient.create(meal_id: 1, ingredient_id: 2)
MealIngredient.create(meal_id: 1, ingredient_id: 3)
MealIngredient.create(meal_id: 1, ingredient_id: 3)
MealIngredient.create(meal_id: 2, ingredient_id: 5)
MealIngredient.create(meal_id: 2, ingredient_id: 6)
MealIngredient.create(meal_id: 2, ingredient_id: 7)
