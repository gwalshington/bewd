# def dogs
#   puts __callee__
# end

# dogs

# Write a for loop that will iterate from 0 to 20. 
sum = 0
for i in 0..20
	if i % 2 == 0
		sum += i	
	end
end

puts sum

# For each iteration, it will check if the current number is even or odd, and report that to the screen (e.g. "2 is even").