class School
    attr_accessor :roster
    def initialize(roster)
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        @roster[grade] = [] 
        @roster[grade] << student_name
    end

end
