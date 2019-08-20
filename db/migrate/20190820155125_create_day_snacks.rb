class CreateDaySnacks < ActiveRecord::Migration[5.2]
  def change
    create_table :day_snacks do |t|
      t.integer :day_id
      t.integer :snack_id

      t.timestamps
    end
  end
end
