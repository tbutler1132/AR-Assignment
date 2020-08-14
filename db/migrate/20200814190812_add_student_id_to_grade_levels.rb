class AddStudentIdToGradeLevels < ActiveRecord::Migration[6.0]
  def change
    add_column :grade_levels, :student_id, :integer
  end
end
