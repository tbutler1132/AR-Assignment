class Student < ActiveRecord::Base
    belongs_to :bus
    belongs_to :grade_level
    has_many :teachers, through: :grade_level

    def full_name
        self.first_name + " " + self.last_name
    end

    def self.all_in_grade(grade_level)
        Student.all.select do |student|
            student.grade_level ==  grade_level
        end
    end
end