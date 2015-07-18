
#select from categories

def form_by_department(department)

	
	if department == "CLERK"
		puts "clerk link"
	elsif department == "ZONING"
		puts "zoning link"
	else
		puts "try something else."
	end
	
end

print "What department are you in? "
	department = gets.chomp.upcase

puts form_by_department(department)
