class Teacher < ActiveRecord::Base
    belongs_to :grade_level
    has_many :students, through: :grade_level

    def tenure
        self.years_of_experience > 5 
    end


end