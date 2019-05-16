require "pry"
# code here!
class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
# grade => [student_name]
  def add_student(student_name, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = [student_name]
    elsif @roster[grade]
      @roster[grade] << student_name
    end
    # binding.pry
    @roster
  end

  def grade(grades)
    @roster[grades]
    #binding.pry
  end

  def sort()
    sorted_hash = @roster.map do |k, v|
      [k, v.sort]
    end
    Hash[sorted_hash]
  end

end
