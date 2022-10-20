class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.belongs_to :category
      t.string :name_exercise
      t.string :time_exercise
      t.string :time_break
      t.integer :min_sets
      t.integer :max_sets
      t.integer :min_reps
      t.integer :max_reps
      t.integer :highest_weight
      t.text :image_exercise
      # t.text :video_exercise

      t.timestamps
    end
  end
end
