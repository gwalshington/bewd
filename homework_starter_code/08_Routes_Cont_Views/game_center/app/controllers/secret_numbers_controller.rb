class SecretNumbersController < ApplicationController

	def new

	end

	def result
		@computer_guess = rand(1..5).to_s
		#w/o @ view will not have access to variable
		@their_guess = params[:choice]
	end

end