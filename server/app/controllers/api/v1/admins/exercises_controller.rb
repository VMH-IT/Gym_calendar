module Api
  module V1
    module Admins
      class ExercisesController < ApplicationController
        before_action :authenticate_request_admin
        skip_before_action :authenticate_request_admin, only: [:create]
        def create
          # binding.pry
          @exercise = Exercise.new(exercise_params)
          @exercise.image.attach(params[:image])
          if @exercise.save
            render json: {
              exercise: @exercise,
              message: 'success'
            }
          else
            render json: {
              message: 'failed',
              validation: @exercise.errors.messages
            }, status: 400
          end
        end

        def search_exercise
          @q = Exercise.ransack(params[:q])
          @exercise = @q.result(distinct: true)
          render json: @exercise, each_serializer: ::Exercises::ExerciseGymSerializer
        end

        def index
          @exercise = Exercise.all
          render json: @exercise, each_serializer: ::Exercises::ExerciseGymSerializer
        end

        def show
          @exercise = Exercise.find(params[:id])
          render json: @exercise, serializer: nil
        end

        def update
          @exercise = Exercise.find(params[:id])
          if @exercise.update(exercise_params)
            render json: {
              exercise: @exercise,
              message: 'Update Successfully'
            }
          else
            render json: {
              message: 'Failed',
              validation: @exercise.errors.messages
            }, status: 400
          end
        end

        def destroy
          @exercise = Exercise.find(params[:id])
          if @exercise.destroy
            render json: {
              message: 'destroy successfuly'
            }
          else
            render json: {
              message: 'destroy failed'
            }, status: 400
          end
        end

        private

        def exercise_params
          params.permit(:name_exercise,
                        :category_id,
                        :content,
                        :time_exercise,
                        :time_break,
                        :min_sets,
                        :max_sets,
                        :min_reps,
                        :max_reps,
                        :highest_weight,
                        :image)
        end
      end
    end
  end
end
