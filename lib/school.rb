# code here!
require 'pry'
class School
    

    def initialize name
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
        
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        self.roster.each {|key, value| roster[key] = value.sort}

    end

end


school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)

binding.pry
0