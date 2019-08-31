class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if request.env["omniauth.auth"]
      auth = request.env["omniauth.auth"]
      user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      @user = User.find_by(username: params[:user][:username])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        redirect_to '/login'
      end
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
