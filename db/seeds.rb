Student.destroy_all
Teacher.destroy_all
GradeLevel.destroy_all
Bus.destroy_all


first = GradeLevel.create(grade_level: "first")
second = GradeLevel.create(grade_level: "second")
third = GradeLevel.create(grade_level: "third")

twelve = Bus.create(route_number: 12)

mcgee = Teacher.create(last_name: "McGee", years_of_experience: 1, grade_level: first)
rumbelow = Teacher.create(last_name: "Rumbelow", years_of_experience: 4, grade_level: third)
donnatello = Teacher.create(last_name: "Johnson", years_of_experience: 7, grade_level: third)

linda = Student.create(first_name: "linda", last_name: "Mac", grade_level: first, bus: twelve)
jimbo = Student.create(first_name: "jimbo", last_name: "fisher", grade_level: first)
trey = Student.create(first_name: "trey", last_name: "donnatello", grade_level: second)
jane = Student.create(first_name: "jane", last_name: "fonda", grade_level: third)


