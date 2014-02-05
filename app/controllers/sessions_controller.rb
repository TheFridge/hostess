class SessionsController < ApplicationController
  def create
    user= User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    cookies["email"] =
      {
       value: user.email,
        expires: 1.year.from_now,
         domain: '127.0.0.1'
    }
    cookies["user_id"] ={
       value: user.id,
        expires: 1.year.from_now,
         domain: '127.0.0.1'
    }
    redirect_to "http://localhost:3000"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
