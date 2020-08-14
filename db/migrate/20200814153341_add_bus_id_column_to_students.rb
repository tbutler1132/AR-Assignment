class AddBusIdColumnToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :route_number_id, :integer
  end
end
