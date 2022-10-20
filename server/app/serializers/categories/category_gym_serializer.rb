module Categories
  class CategoryGymSerializer < ActiveModel::Serializer
    attributes  :id,   
                :description,
                :name_category
    has_many :exercise, serializer: ::Exercises::ExerciseGymSerializer
   end
end