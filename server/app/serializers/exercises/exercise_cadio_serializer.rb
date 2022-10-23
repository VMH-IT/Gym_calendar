module Exercises
  class ExerciseCadioSerializer < ActiveModel::Serializer
    attributes  :id,
                :name_exercise, 
                :time_exercise,   
                :time_break
  end
end
  