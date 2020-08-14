Student.destroy_all
Teacher.destroy_all
GradeLevel.destroy_all
Bus.destroy_all
BusDriver.destroy_all

twelve = Bus.create(route_number: 12)
thirty = Bus.create(route_number: 30)

BusDriver.create(first_name: "Jim", age: 57, bus: twelve, frequency: "Main", grumpiness: 5)
BusDriver.create(first_name: "Jeneane", age: 64, bus: thirty, frequency: "Main")

BusDriverSub.create(first_name: "Barba", age: 54, bus: twelve, frequency: "Sub")

mcgee = Teacher.create(last_name: "McGee", years_of_experience: 1)
rumbelow = Teacher.create(last_name: "Rumbelow", years_of_experience: 4)
donnatello = Teacher.create(last_name: "Johnson", years_of_experience: 7)

linda = Student.create(first_name: "Linda", last_name: "Mac", bus: twelve)
jimbo = Student.create(first_name: "Jimbo", last_name: "Fisher", bus: twelve)
trey = Student.create(first_name: "Trey", last_name: "Donnatello", bus: twelve)
jane = Student.create(first_name: "Jane", last_name: "Fonda", bus: twelve)

first = GradeLevel.create(grade_level: "first", student: linda, teacher: rumbelow)
second = GradeLevel.create(grade_level: "second", student: jimbo, teacher: mcgee)
third = GradeLevel.create(grade_level: "third")
fifth = GradeLevel.create(grade_level: "fifth")


