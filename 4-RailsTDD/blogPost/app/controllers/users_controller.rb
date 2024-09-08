class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
    
    # respond_to do |format|
    #   if @user.save
    #     format.html { redirect_to user_url(@user), notice: "User was successfully created." }
    #     format.json { render :show, status: :created, location: @user }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end

  end

  def login
  end

  def loginProcess
    respond_to do |format|
      puts user_params
      puts user_params[:password]
      @user_login = User.new(user_params)
      @user = User.where(username: user_params[:username]).first

      if user_params[:username].length > 0 && user_params[:password].length > 0
          puts 'ENTERED'
          puts @user
          puts @user
          puts @user
        if @user && @user.password == user_params[:password]
          puts 'success'
          puts @user.id
          puts user_url(@user)
          format.html { redirect_to '/', notice: "Welcome, HackerHero!" }
          format.json { render :show, status: :ok, location: @user }       
        else
          format.html { redirect_to '/', notice: "Username/Password invalid"}
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_to '/', notice: "Username can't be blank, Password can't be blank"}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        puts 'THIS IS user_url(@user)'
        puts @user
        puts user_url(@user)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password)
    end
end
