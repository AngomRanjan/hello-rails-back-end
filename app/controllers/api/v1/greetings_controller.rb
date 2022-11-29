class Api::V1::GreetingsController < ApplicationController
  # GET /greetings
  def index
    @greetings = Greeting.all
    if @greetings
      render json: @greetings[rand(0...@greetings.length - 1)]
    else
      render json: { msg: 'Bad Request', status: 400 }
    end
  end
end
