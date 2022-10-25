class RemoveImageExerciseFromExercise < ActiveRecord::Migration[7.0]
  def change
    remove_column :exercises, :image_exercise  
  end
end
