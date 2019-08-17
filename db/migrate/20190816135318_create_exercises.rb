class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :duration
      t.datetime :start_time
      t.integer :calories
      t.timestamps
    end
  end
end
