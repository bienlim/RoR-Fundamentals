class PostsController < ApplicationController
  def home
    current_user
    if flash[:errors]  # this is not a built-in method. Assume that errors? returns true if something is wrong!
      @errors = flash[:errors]
    end
    @posts = Post.all
  end
  
  def new
    if session[:user_id]
      @post = Post.new(user_id: session[:user_id], content: params[:content])
      if @post.save
        redirect_to '/posts/home'
      else
        redirect_to '/posts/home', flash: {errors: @post.errors.full_messages}
      end

    else
      redirect_to '/'
    end

  end
  private 
  # Use callbacks to share common setup or constraints between actions.
    def current_user
      @current_user = User.find(session[:user_id])
    end
  
end
