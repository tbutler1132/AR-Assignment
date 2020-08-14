class BusDriver < ActiveRecord::Base
    belongs_to :bus
    has_many :students, through: :bus 

    def annoying_bus?
        total = self.students.select do |student|
            student.grade_level.grade_level == "fifth" || student.grade_level.grade_level == "fourth"
        end
        total.count > 5
    end

    def greet_student(student)
      puts "Good morning #{student.first_name}!"
    end

    def honk_horn
        puts "Beeeep!!"
    end

    def total_students
        self.students.count
    end

    # def self.substitute_drivers
    #     BusDriver.all.select do |drivers|
    #         drivers.frequency == "Sub"
    #     end
    # end

end
