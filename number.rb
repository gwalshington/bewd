# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000

# The expected answer is 233168

sum = 0

def numbers(number)
		if (number % 3 == 0) or (number % 5 == 0)
			return number
		else
			return 0
		end

end



1.upto(999) do |number|
	sum += numbers(number)
end

puts sum


# 1.upto(1000) do |number|
# 	puts numbers(number) 
# end
# sum = 0