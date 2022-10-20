class CreateJoinTableExerciseRouteDay < ActiveRecord::Migration[7.0]
  def change
    create_join_table :exercise , :route_day do |t|
      t.index :exercise_id
      t.index :route_day_id
    end
  end
end
