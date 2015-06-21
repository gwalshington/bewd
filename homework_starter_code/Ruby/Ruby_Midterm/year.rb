puts "Welcome to a game that gives you a random fact about a year!"

require 'unirest'
require 'JSON'

def game
	print "What year were you born?"
	year = gets.chomp

	def all_digits(str)
   		 str[/[0-9]+/]  == str
	end

	if all_digits(year) != true
		puts "That is not a year. Please use 4 digits or less."
		all_digits(year)
	elsif 	year.length >= 5
		puts "That is too long. Please enter a year of 4 or less digits. Preferably one that has already arrived."
	else
		year.to_i
		response = Unirest.get "https://numbersapi.p.mashape.com/#{year}/year?fragment=true&json=true",
		  headers:{
		    "X-Mashape-Key" => ENV["MASHAPE_KEY"],
		    "Accept" => "text/plain"
		  }
		puts "In the year #{year}, #{response.body["text"]}. Quite interesting, eh?"
	end
end


game