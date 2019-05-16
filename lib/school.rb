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
		@roster[num]
	end
	
	def sort
		sorted = {}
		@roster.each {|grade, students| sorted[grade] = students.sort}
		sorted
	end
end