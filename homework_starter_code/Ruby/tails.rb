# Create a method called coin_toss that returns either heads or tails.

number = rand(1..2)

def coin_toss(number)
	if number == 1
		puts "Heads"
	else
		puts "Tails"
	end
end

coin_toss(number)