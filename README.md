# AR-Environment-Skeleton

You can use this repo to build new Activerecord projects

* You will need to create your own app/models directories

PartI:

For the student class, you need to create the Student.all_in_grade method as well as the Student.full_name

Part III:

-Destroy teacher_id in the students table and add grade_level_id
-Add grade_level_id to teachers table
-Add a grade_levels table that takes a string of a grade level
-Add macros:
    -GradeLevel: has_many :teachers 
                 has_many :students
    -Teacher: belongs_to :grade_level
              has_many :students, through: :grade_level
    -Student: belongs_to :grade_level
              has_many :teachers, through: :grade_level
-Update seed file to test

