# Ask the user what the temp is outside and return a statement on the weather 
#(e.g., It’s 75 degrees outside, beautiful weather for a leisurely walk. Just wear a light sweater). 

#Ask the user if they would like to check another temperature. Continue to ask until they respond no.


def weather(degrees)
	
	if degrees < 25
		puts "Good god it's cold. Don't even go outside."
		ask_weather
	elsif degrees < 50
		puts "It's pretty cold outside. You definitely want to take a jacket today."
		ask_weather
	elsif degrees < 80
		puts "It's gorgeous out! Go take a walk."
		ask_weather
	elsif degrees < 100
		puts "It's perfect beach weather!"
		ask_weather
	elsif degrees >= 100
		puts "It's in the triple digits today! Wear sunscreen."
		ask_weather
	else
		puts "I didn't quite understand. Please make sure you are writing a numeric number."
		ask_weather
	end
end


def ask_weather
	print "Would you like to check the weather? Type 'Y' for yes and 'N' for no."
	puts
		answer = gets.chomp.upcase
		if answer == "Y"
			print "Hello, what is the weather outside?"
			puts
			degrees = gets.chomp.to_i
			weather(degrees)
		elsif answer == "N"
			puts "Okay, thanks for playing!"
		else
			puts "I didn't quite understand that."
			ask_weather
		end
		
end

ask_weather




