class AddBusTable < ActiveRecord::Migration[6.0]
  def change
    create_table :buses do |t|
      t.integer :route_number
    end
  end
end
