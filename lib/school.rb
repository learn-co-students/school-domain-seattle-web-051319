require "pry"

class School
    attr_reader :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] = [] if @roster.has_key?(grade) == false
        @roster[grade] << name
    end

    def grade(num)
        @roster[num]
    end

    def sort
        # return @roster(a hash of each grade(key) and their roster of students(value))
        # each grade roster(array) needs to be alphabetized

        # Alternative
        # school_roster = @roster.collect do |grade, students|
        #     [grade, students.sort]    
        # end
        # Hash[school_roster]

        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end


        
    end
end