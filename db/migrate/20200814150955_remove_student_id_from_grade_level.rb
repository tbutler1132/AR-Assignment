class RemoveStudentIdFromGradeLevel < ActiveRecord::Migration[6.0]
  def change
    remove_column :grade_levels, :student_id
  end
end
