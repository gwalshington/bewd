puts "Hello, welcome to your new favorite game. Tell me your name, and I will guess your gender!"

require 'unirest'
require "JSON"

def guess_gender

	print "What's your name?"
	name = gets.chomp

	def all_letters(str)
   		 str[/[a-zA-Z]*/]  == str
	end
	if all_letters(name) != true
		puts "Please only use letters to type your name."
	elsif name == "danny"
		puts "I love you."
	else
		result = Unirest.get "https://montanaflynn-gender-guesser.p.mashape.com/?name=#{name}",
	  		headers:{
	    	"X-Mashape-Key" => ENV["MASHAPE_KEY"],
	    	"Accept" => "application/json"
	 	 }
		answer = result.body["gender"] || "person, but I can't guess your gender"
 		  		puts "My guess is that you are a #{answer}."
	end
end

guess_gender