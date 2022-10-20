module Exercises
  class ExerciseCadioSerializer < ActiveModel::Serializer
    attributes  :name_exercise, 
                :time_exercise,   
                :time_break
  end
end
  