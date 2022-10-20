module Api
  module V1
    module Admins
      class SessionsController < ApplicationController
        def create
          @admin = Admin.find_by(email: params[:email])
          if @admin && @admin.valid_password?(params[:password])
            render json: {
                          message: 'sucesss',
                          token: ::JsonWebToken.encode({
                                                        admin_id: @admin.id
                                                       })
            }
          else
            render json: {
                          message: 'failed' 
            }, status: 400
          end
        end
      end
    end
  end
end
  