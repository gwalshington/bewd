class UnicornsController < ApplicationController

	def index
		@unicorns = ["Goldie", "Pepsi", "Unicorny"]
		@message = "Everyone loves unicorns!"
	end

end