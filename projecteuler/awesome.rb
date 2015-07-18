# Here’s a collection of awesome things. 
# awesome_things = ["fly to Paris for vacation”, "win the lottery jackpot”, "binge watching Netflix”, "buying new kicks”, "eat a great meal”]

# # Create a program that adds "Yes lets … " before all of the items in awesome_things. 
# Give the user the ability to adds new awesome_things, and 
# check if they want to continue to add to the original array

# awesome_things = Array.new
awesome_things = ['fly to Paris for vacation', 'win the lottery jackpot', 'binge watching Netflix', 'buying new kicks', 'eat a great meal']


def show_awesome_things(array)
	array.each do |activity|
		puts "Yes let's #{activity}"
	end
end

show_awesome_things(awesome_things)




adds = true

while adds == true
	print "Do you want to add another activity? (y/n)"
	answer = gets.chomp.upcase
		if answer == "Y"
			print "What activity do you want to add?"
			next_answer = gets.chomp
			awesome_things << next_answer
			
		elsif answer == "N"
			puts "You don't want to add anything. Thanks for making my job easier!"
			adds = false
			# awesome_things.each do |activity|
			# 	puts "I would like to #{activity}"
			# end
			show_awesome_things(awesome_things)
		else 
			puts "Sorry, that was not an answer. Please type 'y' for Yes and 'n' for No"
			# print "I didn't understand your answer. Do you want to add another activity?"
			# answer = gets.chomp.upcase
			adds = true
		end
end



