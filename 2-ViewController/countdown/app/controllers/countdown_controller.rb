class CountdownController < ApplicationController
  require 'date'
  def main
    @tomorrow_begin = Time.new((Date.today + 1).year,
                          (Date.today + 1).month,
                          (Date.today + 1).day
                          )

    @date_string = Date.today.to_s(:long)
    @second_until = (@tomorrow_begin - Time.now).round
    puts @date_string, @second_until, @tomorrow_begin

    render 'countdown/main'
  end
end
