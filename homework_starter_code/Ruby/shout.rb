# Create a method that takes a string for an argument and prints an all CAPS version of that string 
#with three exclamation marks added to the end of it.

print "What would you like to shout?"
answer = gets.chomp.upcase

puts "#{answer}!!!"