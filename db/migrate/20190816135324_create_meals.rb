class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :total_calories
      t.integer :total_protein
      t.integer :total_fat
      t.integer :total_carbs
      t.timestamps
    end
  end
end
