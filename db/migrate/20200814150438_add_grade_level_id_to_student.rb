class AddGradeLevelIdToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :grade_level_id, :integer
  end
end
