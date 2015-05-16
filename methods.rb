def hello_world
	puts "Hello World! I am alive!!!"
end


def say_hello
	name = "Walsh"
	puts "Hello " + name
end

def say_name(name)
	puts "Hello " + name + ". How are you?"
end

def formal_greeting(first_name, last_name)
	puts "Hello #{first_name} How are you?"
	puts "Your last name #{last_name} is quite lovely."
end

def returns_four
	4
end

formal_greeting("Walsh", "Costigan")

#name = "Walsh"
#say_name(name)
