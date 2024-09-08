class CountsController < ApplicationController
  @@count = 0 
  def index
    @@count += 1
    render :plain => "You visited this url #{@@count}"
  end
  def reset
    @@count = 0 
    redirect_to '/counts'
  end
end
