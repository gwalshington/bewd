class RockPaperScissorsController < ApplicationController

	def new

	end

	def result
		@computer_guess = rand(1..3)
		if @computer_guess == 1
			@computer_choice = "rock"
		elsif @computer_guess == 2
			@computer_choice = "paper"
		else
			@computer_choice = "scissors"
		end
				
		#w/o @ view will not have access to variable
		@their_choice = params[:sign]
	end

end