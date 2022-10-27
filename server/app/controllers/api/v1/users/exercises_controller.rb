module Api
  module V1
    module Users
      class ExercisesController < ApplicationController
        before_action :authenticate_request_user
        skip_before_action :authenticate_request_user, only: [:create]

        def search_exercise
          @q = Exercise.ransack(params[:q])
          @exercise = @q.result(distinct: true)
          render json: @exercise, each_serializer: ::Exercises::ExerciseGymSerializer
        end

        def index
          @exercise = Exercise.all
          render json: @exercise, each_serializer: ::Exercises::ExerciseGymSerializer
        end

        private

        def exercise_params
          params.permit(:name_exercise,
                        :time_exercise,
                        :time_break,
                        :min_sets,
                        :max_sets,
                        :min_reps,
                        :max_reps,
                        :highest_weight,
                        :category_id,
                        :content)
        end
      end
    end
  end
end
