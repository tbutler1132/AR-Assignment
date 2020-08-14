class AddTeacherIdToGradeLevels < ActiveRecord::Migration[6.0]
  def change
    add_column :grade_levels, :teacher_id, :integer
  end
end
