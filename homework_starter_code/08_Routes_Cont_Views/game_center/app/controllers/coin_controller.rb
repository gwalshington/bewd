class CoinController < ApplicationController

	def new
	end

	def result
		@their_flip = params[:flip]
		@flip = rand(1..2)
		if @flip == 1
			@computer_flip = "heads"
		else
			@computer_flip = "tails"
		end
	end

end