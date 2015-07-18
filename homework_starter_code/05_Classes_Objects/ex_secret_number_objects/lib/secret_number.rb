class SecretNumber
	attr_accessor :rand_number, :numbers

	def initialize
		@numbers = [1,2,3,4,5,6,7,8,9,10]
		@rand_number = @numbers.sample
	end

	# def number
	# 	return @rand_number
	# end

end
