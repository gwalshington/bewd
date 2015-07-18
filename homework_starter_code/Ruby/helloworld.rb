# Easy Write a method that takes one parameter called name, 
#set this parameter to default to "Stranger”, 
#and then have the method print a greeting that says hello to whoever’s name is 
#presently represented by the parameter variable name.

name = "Stranger"

def hello(name)
	print "What is your name?"
	name = gets.chomp.capitalize
	puts "Hello #{name}!"
end

hello(name)