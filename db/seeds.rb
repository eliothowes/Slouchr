# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# #Users

User.create(name: "Harry Chopra", username: "harrychopra", password: "123456", age: 29, height: 187, weight: 187, bio: "")
User.create(name: "Eliot Howes", username: "eliothowes", password: "123456", age: 28, height: 172, weight: 178, bio: "")
User.create(name: "Rod Cardenas", username: "rokujo", password: "123456", age: 31, height: 175, weight: 160, bio: "")
User.create(name: "Adnan Azim", username: "adnanazam", password: "123456", age: 28, height: 187, weight: 170, bio: "")
User.create(name: "Nick Charlot", username: "whatever", password: "123456", age: 30, height: 180, weight: 180, bio: "")

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


# # Ingredients

# Ingredient.create(name: "", calories: , protein: , fat: , carbs: )

# # Meal_Ingredients

# MealIngredient.create(meal_id: , ingredient_id: )

# # Meals

# Meal.create(day_id: , name: "", total_calories: , total_protein: , total_fat: , total_carbs: )