Tim Butler


# AR-Environment-Skeleton

You can use this repo to build new Activerecord projects

* You will need to create your own app/models directories

PartI:

For the student class, you need to create the Student.all_in_grade method as well as the Student.full_name

Part III:

-Destroy teacher_id in the students table 
-Add a grade_levels table that takes a string of a grade level, student_id as an integer and teacher_id as an integer
-Add macros:
    -GradeLevel: belongs_to :teacher 
                 belongs_to :student
    -Teacher: belongs_to :grade_level
              has_many :students, through: :grade_level
    -Student: belongs_to :grade_level
              has_many :teachers, through: :grade_level
-Update seed file to test

