class MainsController < ApplicationController
  
  def index 
    render :plain => 'I am Main Class!'
  end 
  
  def hello
    render :plain => 'Hello world!'
  end

  def say
    render :plain => "HI"
  end

  def say_anything
    render :plain => params[:text]
  end

  def danger
    redirect_to '/mains' #this is for routes
  end
end
