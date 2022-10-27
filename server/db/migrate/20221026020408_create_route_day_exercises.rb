class CreateRouteDayExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :route_day_exercises do |t|
      t.belongs_to :route_day
      t.belongs_to :exercise
      t.integer :user_id

      t.timestamps
    end
  end
end
