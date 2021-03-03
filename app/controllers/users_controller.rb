class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users, :include => :bookings
    end 

    def main 
        token = request.headers["Authenticate"]
        user = User.find(decode(token)["user_id"])
        render json: user #send back an error
    end

    # def create
    #     user = User.create(user_params)
       
    #     if user.valid?
    #       render json: { user: user, status: :created}
    #     else
    #       render json: { error: 'failed to create user', status: :not_acceptable}
    #     end
    #   end
    
    # private
      
    #   def user_params
    #     params.require(:user).permit(:name, :email, :password)
    #   end
end
