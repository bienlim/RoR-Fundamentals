class UsersController < ApplicationController
  layout "two_column", only: [:index]

  def index
    @users = User.all
    render 'users/index'
  end

  def show
  end
end
