module Api
  module V1
    module Admins
      class CategoriesController < ApplicationController
        def index
          @category = Category.all
          render json: Category.all#, each_serializer: nil
        end

        def show
          @category = Category.find(params[:id])
          render json: @category, serializer: nil
        end
      
        def category_gym
          @gym = Category.where(name_category: "gym")
          render json: @gym, each_serializer: ::Categories::CategoryGymSerializer
        end

        def category_cadio
          @cadio = Category.where(name_category: "cadio").or(Category.where(name_category: "fitness"))
          render json: @cadio, each_serializer:  ::Categories::CategoryCadioSerializer
        end 

        def create
          @category = Category.new(category_params)
          if @category.save
            render json:{
              category: @category,
              message: 'success'  
            }
          else
            render json:{ 
              message: 'failed',
              validation: @category.errors.messages
            }, status: 400
          end
        end

        def update
          @category = Category.find(params[:id])
          @category.update(category_params)
          render json: {category: @category, message: "updated"}         
        end
        
        def destroy
          @category = Category.find(params[:id])
          if @category.destroy
            render json: {
              message: "destroy successfuly"
            }
          else
            render json: {
              message: "destroy failed" 
            }, status: 400
          end
        end

        private
        def category_params
          params.permit(:description,:name_category)
        end
      end
    end
  end
end