class AddGradeLevelIdToTeacher < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :grade_level_id, :integer
  end
end
