module Exercises
  class ExerciseGymSerializer < ActiveModel::Serializer
    attributes  :id,
                :name_exercise,
                :content,
                :time_exercise,
                :time_break,
                :min_sets,
                :max_sets,
                :min_reps,
                :max_reps,
                :highest_weight,
                :image_url
  end
end
