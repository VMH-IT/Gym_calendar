module Api
  module V1
    module Users
      class RouteDaysController < ApplicationController
        before_action :authenticate_request_user
        skip_before_action :authenticate_request_user, only: [:create]
        def index
          @route_day = RouteDay.all
          render json: @route_day, each_serializer: RouteDaySerializer
        end

        def show
          @route_day = RouteDay.find(params[:id])
          render json: @route_day, each_serializer: RouteDaySerializer
        end

        def route_exercise
          params[:route_ex].each do |rou|
            rou_day = rou.values[0]
            rou.values[1].each do |exe|
              @routedayexercise = RouteDayExercise.new(user_id: @current_user.id,
                                                       route_day_id: rou_day,
                                                       exercise_id: exe)
              @routedayexercise.save
            end
          end
          if @routedayexercise.save
            render json: {
              message: 'ok'
            }
          else
            render json: {
              message: 'failed'
            }
          end
        end

        def create
          @route_day = RouteDay.new(route_day_params)
          if @route_day.save
            render json: {
              route_day: @route_day,
              message: 'success'
            }
          else
            render json: {
              message: 'failed',
              validation: @route_day.errors.messages
            }, status: 400
          end
        end

        def update
          @route_day = RouteDay.find(params[:id])
          if @route_day.update(route_day_params)
            render json: @route_day
          else
            render json: @route_day.errors, status: :unprocessable_entity
          end
        end

        def destroy
          @route_day.destroy
        end

        private

        def route_day_params
          params.permit(:roupackage_id, :date, :stause)
        end
      end
    end
  end
end
