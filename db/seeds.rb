Student.destroy_all

Student.create(first_name: "linda", last_name: "Mac", grade_level: "third")
Student.create(first_name: "jimbo", last_name: "fisher", grade_level: "fifth")
Student.create(first_name: "trey", last_name: "donnatello", grade_level: "second")

Teacher.destroy_all

Teacher.create(last_name: "McGee", grade_level: "Mac", years_of_experience: 1)
Teacher.create(last_name: "Rumbelow", grade_level: "fisher", years_of_experience: 4)
Teacher.create(last_name: "Johnson", grade_level: "donnatello", years_of_experience: 7)