# secret_number.rb

secret_number = 3

print "Welcome player! This game was created by CE. What is your name? "
player_name = gets.chomp

print "Okay, #{player_name}, here are the rules: you must guess a number between 1 and 10 and you only have 3 tries to do so. Press ENTER when you're ready! "
my_guess = gets.to_i


def guess(my_guess)
  number_guesses_left = 3

  while number_guesses_left > 0

  print "What is your guess? "
  my_guess = gets.to_i

    if
      my_guess < 3
      number_guesses_left-=1
      puts "Your guess was too low. You have #{number_guesses_left} guesses left."

    elsif
      my_guess > 3
      number_guesses_left-=1
      puts "Your guess was too high. You have #{number_guesses_left} guesses left."

    else
      my_guess == 3
      puts "Congrats! The secret number is 3. You win!"
      break

    end

  if
    number_guesses_left == 0
    puts "Sorry! You lose."

  end


  end

end

guess(my_guess)