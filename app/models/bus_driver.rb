class BusDriver < ActiveRecord::Base
    belongs_to :bus
    has_many :students, through: :bus 

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
