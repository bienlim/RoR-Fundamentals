class FeedbackController < ApplicationController
  def index
  end

  def show
    @user  = user_params
    puts @user
    puts @user[:name]
    render 'feedback/show'
  end

  private
    def user_params
      params.require(:user).permit(:name, :course, :score, :reason)
    end
end
