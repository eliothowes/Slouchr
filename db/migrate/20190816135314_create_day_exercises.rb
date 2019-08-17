class CreateDayExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :day_exercises do |t|
      t.integer :day_id
      t.integer :exercise_id
      t.timestamps
    end
  end
end
