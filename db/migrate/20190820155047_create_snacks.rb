class CreateSnacks < ActiveRecord::Migration[5.2]
  def change
    create_table :snacks do |t|
      t.string :name
      t.integer :calories
      t.integer :protein
      t.integer :fat
      t.integer :carbs

      t.timestamps
    end
  end
end
