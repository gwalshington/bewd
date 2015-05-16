# Write a program that asks the user for a number and an exponent 
# return the number given raised to the power of the exponent given.

print "Hello! Please give me a number"
num = gets.chomp.to_i
puts

print "Now, please give me an exponent"
exp = gets.chomp.to_i
puts

answer = (num**exp)

puts answer

# array = Array.new
# array << answer
# puts array