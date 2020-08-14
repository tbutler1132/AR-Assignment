class RemoveTeacherIdFromGradeLevel < ActiveRecord::Migration[6.0]
  def change
    remove_column :grade_levels, :teacher_id
  end
end
