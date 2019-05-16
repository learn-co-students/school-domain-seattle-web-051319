# code here!
require 'pry'
class School

  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @grade = grade
    @name = name
    #binding.pry
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_hash = {}
    @roster.map {|grade, student| new_hash[grade] = student.sort}
    new_hash
  end

end
