class Person

	# def initialize(name, email, phone, handle, title)
	# 	@name = name
	# 	@email = email
	# 	@phone = phone
	# 	@handle = handle
	# 	@title = title
	# end
	#to initialize with optional perams
	def initialize(name, options = {})
		@name = name
		@email = options[:email]
		@phone = options[:phone]
		@handle = options[:handle]
		@title = options[:title] || "employee"
	end

	#defines how to output "me"
	def to_s
		"#{@name} is the #{@title} and can be reached at #{@email}"
	end
end

# me = Person.new("Brian", "brian@brian.net", "555-555-5555", "@fountain", "Instructor")
me = Person.new("Brian", email: "brian@brian.net", title: "Instructor")

puts me