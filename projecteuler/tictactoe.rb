# board = 
# "1 | 2 | 3
# 3 | 4 | 5
# 6 | 7 | 8"


# puts "Welcome to Tic Tac Toe! Here is your board"
# puts board

# print "What space would you like to place an X on?"
# answer = gets.chomp.to_s

		
# 		if board.include?("#{answer}")
# 			# puts "Space available"
# 			# board ['#{answer}'] = 'X'
		
# 			board = board.gsub!("#{answer}", "X")
			
# 		else
# 			puts "That space is not available. Please choose another."
# 		end


# puts board

###########################################################
board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

puts "Welcome to Tic Tac Toe! Here is your board"

def board_display
	puts "
		#{board[0]}	|	#{board[1]}	|	#{board[2]}
		#{board[3]}	|	#{board[4]}	|	#{board[5]}
		#{board[6]}	|	#{board[7]}	|	#{board[8]}"
end

board_display

print "What space would you like to place an X on?"
answer = gets.chomp.to_s

if board.include?("#{answer}")
			# puts "Space available"
			# board ['#{answer}'] = 'X'
		
			board = board.gsub!("#{answer}", "X")
			
		else
			puts "That space is not available. Please choose another."
		end



# puts "
# #{board[0]}	|	#{board[1]}	|	#{board[2]}
# #{board[3]}	|	#{board[4]}	|	#{board[5]}
# #{board[6]}	|	#{board[7]}	|	#{board[8]}"