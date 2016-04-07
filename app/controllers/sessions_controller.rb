class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    dbUser = User.find_by_email(user.email)
    if dbUser.present? then
      #se o user existir guarda o id dele
      session[:user_id] = dbUser.id
    else
      newUser = User.new(:email => user.email,
                       :password => 'noPassword',
                       :password_confirmation => 'noPassword',
                       :provider => user.provider,
                       :uid => user.uid,
                       :name => user.name)
      newUser.save
      session[:user_id] = newUser.id
    end
    redirect_to green_kub_boxes_path

  end

  def destroy
    session[:user_id] = nil
    redirect_to green_kub_boxes_path
  end


end
