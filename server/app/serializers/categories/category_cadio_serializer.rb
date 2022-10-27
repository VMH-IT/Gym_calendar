module Categories
  class CategoryCadioSerializer < ActiveModel::Serializer
    attributes  :id,
                :description,
                :name_category
    has_many :exercise, serializer: ::Exercises::ExerciseCadioSerializer
  end
end
