class UsersController < ApplicationController
  def login
    @user = User.new
  end

  def login_process
      #@user_login = User.new(params[:email])
      puts params[:email]
      @user = User.where(email: params[:email]).first
      puts @user
      if params[:email].length > 0 && params[:password].length > 0
        if @user && @user.password == params[:password]
          session[:user_id] = @user.id
          redirect_to "/users/#{@user.id}", notice: "Welcome, HackerHero!"
        else
          redirect_to '/', notice: "Email/Password invalid"
        end
      else
        redirect_to '/', notice: "Username/Password can't be blank"
      end
  end
  

  def index
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
        redirect_to  '/users/new' , notice: "User was successfully created."
      else
        @errors = @user.errors
        puts @user.errors.full_messages
        redirect_to '/users/new', flash: {errors: @user.errors.full_messages}
      end
  end

  def show
    set_user
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private 
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
