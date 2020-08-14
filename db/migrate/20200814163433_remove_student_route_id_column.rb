class RemoveStudentRouteIdColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :route_number_id
  end
end
