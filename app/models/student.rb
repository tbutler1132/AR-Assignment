class Student < ActiveRecord::Base
    belongs_to :bus
    has_many :bus_drivers, through: :bus
    has_many :grade_levels
    has_many :teachers, through: :grade_levels

    def full_name
        self.first_name + " " + self.last_name
    end

    def self.all_in_grade(grade_level)
        Student.all.select do |student|
            student.grade_level ==  grade_level
        end
    end
end