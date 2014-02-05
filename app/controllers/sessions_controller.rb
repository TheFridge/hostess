class SessionsController < ApplicationController
  def create
    user= User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    cookies.signed["email"] =
      {
       value: user.email,
        expires: 1.year.from_now,
         domain: 'herokuapp.com'
    }
    cookies.signed["user_id"] ={
       value: user.id,
        expires: 1.year.from_now,
         domain: 'herokuapp.com'
    }
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
