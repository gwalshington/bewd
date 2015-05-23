puts "Welcome to a game that gives you a random fact about a year!"

require 'unirest'
require 'JSON'

def game
	print "What year were you born?"
	year = gets.chomp.to_i

	
		
		#The above function returns nil for any string with non-numeric characters, 
		#false for those which are numeric but outside the provided range, a
		#and true for valid year strings.
		
	# if is_valid_year?

	# else
	response = Unirest.get "https://numbersapi.p.mashape.com/#{year}/year?fragment=true&json=true",
	  headers:{
	    "X-Mashape-Key" => ENV["MASHAPE_KEY"],
	    "Accept" => "text/plain"
	  }
	  puts "In the year #{year}, #{response.body["text"]}. Quite interesting, eh?"
end


game

def is_valid_year?(date_str, start=0001, finish=2015)
  			date_str.grep(/^(\d)+$/) {|date_str| (start..finish).include?(date_str.to_i) }.first
end

# is_valid_year?(1999)