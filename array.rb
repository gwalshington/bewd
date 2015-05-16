colors = ["red", "white", "blue"]
nephews = ["huey", "dewey", "louis"]
lucky_numbers = [12, 14, 89, 107]

#referencing
colors[0] # => "red"
# assignment
colors[3] = "green"

nephews.length #3
nephews.include? "uncle scrooge" # falseluck	
lucky_numbers.push(7) # => [12, 14, 89, 107, 7]
lucky_numbers.pop # takes off 7 and returns 7
colors.reverse # => doesn't modify the receiver (receiver= object 'colors')
colors.reverse! # => ! modifies the receiver
colors.shift # returns and removes 1st item in array
colors.unshift "brown" # adds brown to position 0 in array, and moves everything else up one.


#Loops with arrays
colors.each do |color|
	puts "Everyone loves the color #{color}"
end

nephews.each do |nephew|
	puts "My nephew's name is #{nephew.capitalize}"
end