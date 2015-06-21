
class Student

	attr_accessor :name, :major, :course, :grade

	def initialize(name, major, course, grade)
		@name = name
		@major = major
		@course = course
		@grade = grade
	end
	#self.something references Class you're in. It's a class method
	def grade_status
	  if self.grade == "F"
	    "failed"
	  elsif ["D", "E"].include?(self.grade) && self.major == self.course
	    # if the course is their major, they need at least a C to pass
	    "failed"
	  else
	    "passed"
	  end
	end


end


# #These are 3 hashes that have the same fields and share a similar behavior
 jimmy = Student.new("Jimmy Mazzy", "Math", "Math", "A")

 pepe = Student.new("Pepe Phaenagrotis", "Music", "Math", "C")

 edward = Student.new("Edward Ellis", "Math", "Math", "D")

#

puts "#{jimmy.name} has #{jimmy.grade_status} #{jimmy.course}"
puts "#{pepe.name} has #{pepe.grade_status} #{pepe.course}"
puts "#{edward.name} has #{edward.grade_status} #{edward.course}"