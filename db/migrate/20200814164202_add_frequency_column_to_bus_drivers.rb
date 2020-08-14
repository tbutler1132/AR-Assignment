class AddFrequencyColumnToBusDrivers < ActiveRecord::Migration[6.0]
  def change
    add_column :bus_drivers, :frequency, :string
  end
end
