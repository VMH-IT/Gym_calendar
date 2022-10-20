module Api
  module V1
    module Users
      class RouteDaysController < ApplicationController
        def index
          @route_day = Route_day.all
          render json: @route_day
        end	
 
        def show
          @route_day = Route_day.find(params[:id])
          render json: @route_day
        end

        def create
          @route_day = Route_day.new(route_day_params)
          if @route_day.save
            render json: {
							route_day: @route_day
              message: 'success',
            }
          else
            render json: {
              message: 'failed'
            }, status: 400
          end
        end

        def update
          @route_day = Route_day.find(params[:id])
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
          params.permit(:route_id, :date , :stause)
        end
      end
    end
  end
end