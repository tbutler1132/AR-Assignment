class BusDriverGrumpiness < ActiveRecord::Migration[6.0]
  def change
    add_column :bus_drivers, :grumpiness, :integer, {:default: 5}
  end
end
