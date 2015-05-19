 # Create a method that takes a parameter from a user (either 'paper’, 'rock’, or 'scissors’), 
 # then returns a random choice from the computer and tells a user whether or not they won.

# def question
 print "Choose Rock, Paper or Scissors"
 puts
 guess = gets.chomp.upcase


 bot_guess = rand(1..3)
 #1 = Rock
 #2 = Paper
 #3 = Scissors

# puts bot_guess

 def game(guess, bot_guess)
 	if guess == "ROCK"
 		if bot_guess == 3
 			puts "The computer chose Scissors"
 			puts "You win! Rock beats Scissors."
 		elsif bot_guess == 2
 			puts "The computer chose Paper"
 			puts "You lose. Paper beats Rock."
 		else
 			puts "The computer chose Rock"
 			puts "It's a tie!"
 		end
 	elsif guess == "PAPER"
 		if bot_guess == 1
 			puts "The computer chose Rock"
 			puts "You win! Paper beats Rock."
 		elsif bot_guess == 3
 			puts "The computer chose Scissors"
 			puts "You lose. Scissors beats Paper."
 		else
 			puts "The computer chose Paper"
 			puts "It's a tie!"
 		end
 	elsif guess == "SCISSORS"
 		if bot_guess == 1
 			puts "The computer chose Rock"
 			puts "You lose. Rock beats scissors."
 		elsif
 			bot_guess == 2
 			puts "The computer chose Paper"
 			puts "You win! Scissors beats Paper."
 		else
 			puts "The computer chose Scissors"
 			puts "It's a tie! Play again."
 		end

 	else
 		puts "I didn't understand your guess."
 	end			
end

game(guess, bot_guess)