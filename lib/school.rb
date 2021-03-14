# code here!
class School
    attr_accessor :school_name, :roster, :grade, :student_name

    # initialize name so School can be initialized with a name 
    # and initialize an empty hash called roster
    def initialize(school_name)
        @school_name = school_name
        @roster = {} 
    end
    
    # add_student method that can add student_name and grade to roster
    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end  
    
    # method to retrieve students from a grade
    def grade(grade)
        @roster.fetch(grade)
    end

    def sort
        @roster.each { |grade, student_name| @roster[grade] = student_name.sort! { |x, y| x[0] <=> y[0]}}
    end

end
