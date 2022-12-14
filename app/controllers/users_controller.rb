class UsersController < ApplicationController
before_action :check_for_admin, :only => [:index]

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.create user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
    
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
