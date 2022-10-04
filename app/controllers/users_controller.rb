class UsersController < ApplicationController

    def sign_up
      @user = User.new
    end    


    def sign_in
      @user = User.new
    end  


    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to "/"
        flash[:notice] = "welcome"
      else
        redirect_to "/users/sign_up"
      end
    end    



    def user_params
      params.require(:user).permit(:email , :password , :password_confirmation)
    end    

end
