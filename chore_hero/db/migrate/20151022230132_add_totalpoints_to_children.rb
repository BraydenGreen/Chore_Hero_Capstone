class AddTotalpointsToChildren < ActiveRecord::Migration
  def change
    add_column :children, :total_points, :float, :default => 0
  end
end
