module Api
  module V1
    module Users
      class UsersController < ApplicationController
        def index
          @user = User.all
          render json: @user, each_serializer: UsersSerializer
        end
 
        def show
          @user = User.find(params[:id])
          token = encode_token({ user_id: @user.id })
          render json: { user: @user, token: token }, status: :ok
        end

        def create
          @user = User.new(user_params)
          if @user.save
            # userMailer.account_activation(@user).deliver_now
            render json: {
              user: @user,
              message: 'success',
              token: ::JsonWebToken.encode({
                                            user_id: @user.id
                                          })
            }
          else
            render json: {
              message: 'failed'
            }, status: 400
          end
        end

        def update
          @user = User.find(params[:id])
          if @user.update(user_params)
            render json: @user
          else
            render json: @user.errors, status: :unprocessable_entity
          end
        end

        def destroy
          @user.destroy
        end
      
        private
    
        def user_params
          params.permit(:email, :password, :fname, :lname, :weight, :height, :phone, :age, :gender)
        end
      end
    end
  end
end