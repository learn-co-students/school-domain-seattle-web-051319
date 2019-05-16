# code here!
require 'pry'


class School

    attr_reader :name, :roster, :grade

    def initialize(name)
        @name = name
        @roster = {}

    end
    
    def add_student(student, grade)
        if @roster.key?(grade) == false
            @roster[grade] = []
            @roster[grade] << student 
        else
            @roster[grade] << student 
        end
    end

    def grade(student_grade)
        @roster[student_grade]
    end 

    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
        @roster
    end


end

