class DiceController < ApplicationController

	def new
	end

	def result
		@their_roll = rand(1..6)
	end

end
