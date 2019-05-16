class School
	attr_reader :roster
	
	def initialize(school)
		@name = school
		@roster = {}
	end
	
	def add_student(name, grade)
		@roster[grade] ||= []
		@roster[grade].push(name)
	end
	
	def grade(num)
		roster[num]
	end
	
	def sort
		roster.each do |grade, students|
			roster[grade] = students.sort
		end
	end
end