class CreateBusDriverTable < ActiveRecord::Migration[6.0]
  def change
    create_table :bus_drivers do |t|
      t.string :first_name
      t.integer :age
      t.integer :bus_id
    end
  end
end
