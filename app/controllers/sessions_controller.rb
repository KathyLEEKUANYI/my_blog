class SessionsController < ApplicationController

  def create
   # render html: params[:user]
    pw = Digest::SHA1.hexdigest("xx-#{params[:user][:password]}-yy")
    user = User.find_by(email: params[:user][:email] , password: pw)    

    if user
      redirect_to "/" , notice:"welcome"
    else
      redirect_to sign_up_users_path
    end  
  end
  
  
end
