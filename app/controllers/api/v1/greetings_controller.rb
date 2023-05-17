class Api::V1::GreetingsController < ApplicationController
  def random
    @greeting = Api::V1::Greeting.order('RANDOM()').first

    if @greeting
      render json: { greeting: @greeting.greeting }
    else
      render json: { error: 'No greetings found' }, status: :not_found
    end
  end
end
