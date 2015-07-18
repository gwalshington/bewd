# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?




# foreach n in numbers do |n|
# 	smallest = 100
# 	remainder = (smallest % n)
# 	if remainder != 0
# 		smallest = smallest + 1		
# 	end
# end

# puts smallest

smallest = 2000

until (1..20).all? { |n| smallest % n == 0 }
	smallest += 20
end

puts smallest




# 1.upto(10) do |n|
# 	if (smallest % n != 0)
# 		smallest += 10
# 	end
# end
	
# puts smallest
