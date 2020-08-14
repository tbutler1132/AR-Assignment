class AddBusIdToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :bus_id, :integer
  end
end
