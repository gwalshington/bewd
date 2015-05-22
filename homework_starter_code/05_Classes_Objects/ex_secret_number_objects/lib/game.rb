
require 'lib/player'
require 'lib/secret_number'

#Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop



	attr_accessor :player



	def initialize(player)
		@player = player
	end

	def greeting
		puts "Hello #{@player.name}"
		puts "You must guess a number between 1 and 10. Be careful, because you only have 3 guesses!"
	end

	# def guess
	# 	print "What is your guess?"
	# 	@guess = gets.chomp
	# 	puts @guess
	# end

	def game
		@count = 3	

		ran_number = SecretNumber.new
		while @count > 0
		print "Guess a number between 1 and 10:"
		@guess = gets.chomp.to_i
			if @guess == ran_number.rand_number
				puts "You win! The number was #{ran_number.rand_number}"
				break
			else
				puts "Nope, it's not #{@guess}, guess again."
				@count -= 1
			end
		end
		if @count == 0
			puts "Sorry you lose because you're out of guesses. The number was #{ran_number.rand_number}."
			
		end
	end

	# game(guess)
	# 	end

end
