class Student < ActiveRecord::Base

    def full_name
        self.first_name + " " + self.last_name
    end

    def self.all_in_grade(grade_level)
        Student.all.select do |student|
            student.grade_level ==  grade_level
        end
    end

end