# Create a method that takes parameter called number_of_dice, 
#then create a loop that "rolls a die” (returns a number between 1 and 6) once 
#for each number_of_dice… have it add up the total and print it out saying "You rolled ”.

print "How many dice would you like to roll?"
number_of_dice = gets.chomp.to_i

def rolls_die(number_of_dice)
	roll = rand(1..6)
	puts total
end

total = number_of_dice * roll

rolls_dice(number_of_dice)