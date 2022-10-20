class AddColumnToExercises < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :content, :text
  end
end
