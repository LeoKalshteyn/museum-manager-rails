class UsersController < ApplicationController

  # signup page
  def new
    @user = User.new
  end

  # new user
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id]=@user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  # display user profile
  def show
    @exhibits  = Exhibit.all
    @user = User.find_by_id(params[:id])
    redirect_to '/' if !@user
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    user = User.find_by_id(params[:id])
    user.update(user_params)
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
