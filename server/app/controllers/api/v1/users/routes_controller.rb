module Api
  module V1
    module Users
      class RoutesController < ApplicationController
        def index
          @route = Route.all
          render json: @route
        end
 
        def show
          @route = Route.find(params[:id])
          render json: @route
        end

        def create
          @route = Route.new(route_params)
          if @route.save
            render json: {
              message: 'success',
            }
          else
            render json: {
              message: 'failed'
            }, status: 400
          end
        end

        def update
          @route = Route.find(params[:id])
          if @route.update(route_params)
            render json: @route
          else
            render json: @route.errors, status: :unprocessable_entity
          end
        end
				
        def destroy
          @route.destroy
        end
      
        private
    
        def route_params
          params.permit(:user_id , :name_route , :description , :repeat , :date_start , :date_end , :status_route)
        end
      end
    end
  end
end