class CreateSedentaryActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :sedentary_activities do |t|
      t.string :name
      t.integer :duration
      t.datetime :start_time
      t.integer :calories
      t.timestamps
    end
  end
end
