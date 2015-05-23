puts "Hello, welcome to your new favorite game. Tell me your name, and I will guess your gender!"

require 'unirest'
require "JSON"

def guess_gender

	print "What's your name?"
	name = gets.chomp

	result = Unirest.get "https://montanaflynn-gender-guesser.p.mashape.com/?name=#{name}",
	  headers:{
	    "X-Mashape-Key" => ENV["MASHAPE_KEY"],
	    "Accept" => "application/json"
	  }

  	puts result.body["gender"]

end

guess_gender