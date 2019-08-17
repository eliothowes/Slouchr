class CreateDaySedentaryActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :day_sedentary_activities do |t|
      t.integer :day_id
      t.integer :sedentary_activity_id
      t.timestamps
    end
  end
end
