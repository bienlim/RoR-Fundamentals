class UsersController < ApplicationController
  before_action :current_user, only: [:show, :edit, :update, :index]
  layout 'facebook', only: [:login, :new]
  def login
    @user = User.new
  end
  def logout
    reset_session
    redirect_to '/'
  end

  def login_process
      #@user_login = User.new(params[:email])
      puts params[:email]
      @user = User.where(email: params[:email]).first
      puts @user
      if params[:email].length > 0 && params[:password].length > 0
        if @user && @user.password == params[:password]
          session[:user_id] = @user.id
          redirect_to "/users/index"
        else
          redirect_to '/', notice: "Email/Password invalid"
        end
      else
        redirect_to '/', notice: "Username/Password can't be blank"
      end
  end
  

  def index

    @friends = @current_user.friends
    @notfriends = Array.wrap(User.all)-Array.wrap(@friends)-Array.wrap(@current_user)
  end

  def new
    @user = User.new
    if flash[:errors]  
      @errors = flash[:errors]
    end
  end

  def create
    @user = User.new(user_params)

      if @user.save
        session[:user_id] = @user.id
        redirect_to  '/users/index'
      else
        @errors = @user.errors
        puts @user.errors.full_messages
        redirect_to '/users/new', flash: {errors: @user.errors.full_messages}
      end
  end

  def show
    set_user
    if set_user.id == session[:user_id]
      redirect_to "/users/index"
    end
    
    if is_friend(set_user.id).nil?
      @is_friend = ' '
    else 
      @is_friend = 'd-none'
    end
    @friends = @set_user.friends
  end

  def destroy
  end

  def edit

  end

  def update
    if user_params[:password] == params[:confirm_password] && user_params[:password] == current_user[:password]
      if @current_user.update(user_params)
        redirect_to  '/users/index' 
      else
        @errors = @current_user.errors
        puts @current_user.errors.full_messages
        redirect_to '/users/edit', flash: {errors: @current_user.errors.full_messages}
      end
    else
        redirect_to '/users/edit', notice: "Password invalid"
    end
  end

  private 
    # Use callbacks to share common setup or constraints between actions.
    def current_user
      @current_user = User.find(session[:user_id])
    end
    def set_user
      @set_user = User.find(params[:id])
    end

    def is_friend(friend_id)
      User.find(session[:user_id]).friendships.find_by("user_id = ? OR friend_id = ?", params[:id], params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
