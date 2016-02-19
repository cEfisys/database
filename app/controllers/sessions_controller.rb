class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:email] = user.email
    if User.exists(user.email) then
      #se o user existir guarda o id dele
      session[:user_id] = User.getId(user.email)
    else
      newUser = User.new(:email => user.email,
                       :password => 'noPassword',
                       :password_confirmation => 'noPassword')
      newUser.save
      session[:user_id] = newUser.id
    end
    redirect_to green_kub_boxes_path

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
