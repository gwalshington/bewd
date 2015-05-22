puts "Welcome to a game that gives you a random fact about a year!"

require 'unirest'
require 'JSON'

def game
	print "What year were you born?"
	year = gets.chomp.to_i

	response = Unirest.get "https://numbersapi.p.mashape.com/#{year}/year?fragment=true&json=true",
	  headers:{
	    "X-Mashape-Key" => "WJQWvWJCdxmshaVi9mIDPwuxMtACp1dcCPRjsnHjjpsqBO7Atw",
	    "Accept" => "text/plain"
	  }
	  puts "In the year #{year}, #{response.body["text"]}. Quite interesting, eh?"
end

game