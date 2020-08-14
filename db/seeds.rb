Student.destroy_all
Teacher.destroy_all

mcgee = Teacher.create(last_name: "McGee", grade_level: "Mac", years_of_experience: 1)
rumbelow = Teacher.create(last_name: "Rumbelow", grade_level: "fisher", years_of_experience: 4)
Teacher.create(last_name: "Johnson", grade_level: "donnatello", years_of_experience: 7)

Student.create(first_name: "linda", last_name: "Mac", grade_level: "third", teacher: mcgee)
Student.create(first_name: "jimbo", last_name: "fisher", grade_level: "fifth", teacher: rumbelow)
Student.create(first_name: "trey", last_name: "donnatello", grade_level: "second", teacher: rumbelow)