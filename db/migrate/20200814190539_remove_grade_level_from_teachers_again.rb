class RemoveGradeLevelFromTeachersAgain < ActiveRecord::Migration[6.0]
  def change
    remove_column :teachers, :grade_level_id
  end
end
