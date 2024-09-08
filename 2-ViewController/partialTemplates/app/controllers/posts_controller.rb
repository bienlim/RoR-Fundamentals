class PostsController < ApplicationController
  layout "three_column", only: [:index]
  
  def index
    @posts = Post.all
    render  'posts/index'
  end

  def show
  end
end
