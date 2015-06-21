class Animal

	#instance variable - will store attributes on the object
	
	#quick way to combine readers and writers in one line
	attr_accessor :name, :legs
	
	#quick getter
	attr_reader :name
	#quick setter	
	attr_writer :name

	#getter - gets info off object
	#longer getting version
	# def name
	# 	@name
	# end

	# #setter - returns information


	#shorter way of setting method
	
	#long way of setting
	# def name=(name)
	# 	@name = name
	# end
	#class method

	#requires new Animals must have a name. initialize is a Ruby method
	def initialize(name)
		@name = name
	end


	def self.stampede
		puts "All the animals are running."
	end
	#instance method
	def walk
		puts "Walking around"
	end

	def description
		#return number of legs, unless @legs is nil, return something else
		puts "My name is #{@name}, and I have #{@legs || "an unknown number of"} legs."
	end

	def walk_to_destination(destination)
		puts "I am walking to #{destination}."
	end




end

#inheritance
	
class Dog < Animal
	def walk
		#executes parent behavior, and then this subclasses' behavior
		super
		puts "pitter patter"
	end
end


















