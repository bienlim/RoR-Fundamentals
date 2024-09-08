class GameController < ApplicationController
  require 'date'

  #@@logs ="[#{DateTime.now()}] Welcome to Money Button Game, risk taker! All you need to do is to push the buttons to try your luck. You have free 10 chances with initial money 500. Choos wisely and good luck!"

  def index
    session[:money] ||= 500
    session[:chance] ||= 10
    session[:logs] ||="[#{DateTime.now()}] Welcome to Money Button Game, risk taker! All you need to do is to push the buttons to try your luck. You have free 10 chances with initial money 500. Choos wisely and good luck!\n"
    if session[:money] <= 0
      session[:logs] +="[#{DateTime.now()}] Game over, No more money!"
    end
    if session[:chance] <= 0 
      session[:logs] +="[#{DateTime.now()}] Game over, No more chances!"
    end
    
    @money = session[:money]
    @chance = session[:chance]
    @logs = session[:logs]
    render 'game/index'
  end
  
  def low
    if session[:chance] > 0 && session[:money] > 0 
      @roll =  rand(-25..100)
      session[:money] += @roll
      session[:chance] -= 1
      session[:logs] +="[#{DateTime.now()}] You rolled #{@roll}. You now have #{session[:money]} and you only have #{session[:chance]} chances left. Goodluck!\n"
    end
      redirect_to '/'
  end

  def moderate
    if session[:chance] > 0 && session[:money] > 0
      @roll =  rand(-100..1000)
      session[:money] += @roll
      session[:chance] -= 1
      session[:logs] +="\n[#{DateTime.now()}] You rolled #{@roll}. You now have #{session[:money]} and you only have #{session[:chance]} chances left. Goodluck!"
    end
      redirect_to '/'
  end

  def high
    if session[:chance] > 0 && session[:money] > 0
      @roll =  rand(-500..2500)
      session[:money] += @roll
      session[:chance] -= 1
      session[:logs] +="\n[#{DateTime.now()}] You rolled #{@roll}. You now have #{session[:money]} and you only have #{session[:chance]} chances left. Goodluck!\n"
    end
      redirect_to '/'
  end

  def severe
    if session[:chance] > 0 && session[:money] > 0
      @roll =  rand(-3000..5000)
      session[:money] += @roll
      session[:chance] -= 1
      session[:logs] +="\n[#{DateTime.now()}] You rolled #{@roll}. You now have #{session[:money]} and you only have #{session[:chance]} chances left. Goodluck!\n"
    end
      redirect_to '/'
  end
  def reset
    session[:money] = false
    session[:chance] = false
    session[:logs] = false 
    redirect_to '/'
  end
end
