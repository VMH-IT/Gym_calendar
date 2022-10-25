module Api
  module V1
    module Users
      class RoupackagesController < ApplicationController
        def index
          @roupackage = Roupackage.all
          render json: @roupackage, each_serializer: RoupackageSerializer
        end
 
        def show
          @roupackage = Roupackage.find(params[:id])
          render json: @roupackage, each_serializer: RoupackageSerializer
        end

        def create
          @roupackage = Roupackage.new(roupackage_params)
          if @roupackage.save
            render json: {
              roupackage: @roupackage,
              message: 'success'
            }
          else
            render json: {
              message: 'failed'
            }, status: 400
          end
        end

        def update
          @roupackage = Roupackage.find(params[:id])
          if @roupackage.update(roupackage_params)
            render json: @roupackage
          else
            render json: @roupackage.errors, status: :unprocessable_entity
          end
        end

        def destroy
          @roupackage.destroy
        end
      
        private
    
        def roupackage_params
          params.permit(:user_id, :name_roupackage, :description, :repeat, :date_start, :date_end, :status_roupackage)
        end
      end
    end
  end
end