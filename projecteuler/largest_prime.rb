# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?


require 'prime'



# puts num.prime?


max = 600851475143
num = 3

def prime_factor(max, num)
	while (num < max) do
		if ((max % num == 0) && num.prime?)
			puts num
			# num.prime? == true
			num = num + 1
		else
			num = num + 1
		end
	end
end

prime_factor(max, num)


# puts Prime.instance(100)