class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]  #call before action

#Index
  def index
    @users = User.all
  end

#New User
  def new
    @user = User.new
  end

#Create User
  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to new_seller_path
    else
      render :new
    end
  end

#Private Methods
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
