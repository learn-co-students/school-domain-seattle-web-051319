require 'pry'

class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = [name]
    else 
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    return @roster[grade]
  end
  
  def sort
    @roster = Hash[@roster.sort]
    @roster.each do |grade, val|
      @roster[grade] = val.sort
    end
  end
end