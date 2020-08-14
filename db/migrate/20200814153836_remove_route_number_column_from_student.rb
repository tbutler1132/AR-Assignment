class RemoveRouteNumberColumnFromStudent < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :route_number
  end
end
