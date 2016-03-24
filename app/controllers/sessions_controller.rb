class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:email] = user.email
    dbUser = User.find_by_email(user.email)
    if dbUser.present? then
      #se o user existir guarda o id dele
      session[:user_id] = dbUser.id
      session[:isAdmin] = dbUser.isAdmin
    else
      newUser = User.new(:email => user.email,
                       :password => 'noPassword',
                       :password_confirmation => 'noPassword',
                       :provider => user.provider,
                       :uid => user.uid,
                       :name => user.name)
      newUser.save
      session[:user_id] = newUser.id
      session[:isAdmin] = false
    end
    redirect_to green_kub_boxes_path

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
