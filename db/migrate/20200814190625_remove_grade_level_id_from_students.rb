class RemoveGradeLevelIdFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :grade_level_id
  end
end
