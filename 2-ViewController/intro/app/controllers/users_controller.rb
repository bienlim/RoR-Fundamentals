class UsersController < ApplicationController
  def index
    @users = User.all

      render 'users/index'
  end

  def new
  end

  def edit
  end

  def create
    @user = User.create( first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    
    redirect_to '/users/index'
    puts @user.inspect
  end
end
