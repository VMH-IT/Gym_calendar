class ApplicationController < ActionController::API
  private

  def current_user
    puts 'current user check'
    puts "token: #{request.headers['Authorization']}"
    token = request.headers['Authorization'].split('Bearer ').last
    puts "token: #{token}"
      decoded = JsonWebToken.decode(token)
    User.find(decoded['sub'])
    rescue StandardError => e
      nil
  end
  def authenticate_request_admin
    header = request.headers["Authorization"]
    if header
      header = header.split(" ").last 
      decode = JsonWebToken.decode(header)
      @current_admin= Admin.find_by(id: decode[:admin_id])
      if !@current_admin 
        render json: {
          message: "You aren't admin"
        }
      end
    else
      render json: {
        message: "You need login"
      }
    end
  end

  def authenticate_request_user
    header = request.headers["Authorization"]
    if header
      header = header.split(" ").last
      if JsonWebToken.decode(header)
        decode = JsonWebToken.decode(header)
        @current_user = User.find_by(id: decode[:user_id])
        if !@current_user
          render json: { 
            message: "please login, you aren't user"
          }
        end
      else
        render json: { 
          message: "Please login, because your session is signature"}
      end
    else
      render json: {
        message: "You need to login"
      }
    end
  end
end
