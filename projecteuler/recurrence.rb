# Write a method named recurrence that takes a number as a parameter. 
#Within that method create an if statement that checks if the number is higher than zero, 
#if it is greater than zero subtract one from the number and 
#then call the recurrence method on that new number from within the recurrence method. 
#When the number gets to zero have the method stop.



def recurrence(number)
	if number > 0
		number -= 1
		puts "The number is #{number}."
		recurrence(number)
	else
		puts "The number is zero"
	end
end


recurrence(10)