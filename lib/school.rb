require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(school)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
      roster[grade] ||=  []
      roster[grade] << name
  end

  def grade(student_grade)
      @roster[student_grade]
  end

  def sort
    # binding.pry
    sorted = {}
    roster.each do |grade, student|
    sorted[grade] = student.sort
  end
sorted
end

end

# code here!
