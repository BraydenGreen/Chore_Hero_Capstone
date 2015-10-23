class AddPointsTotalToUser < ActiveRecord::Migration
  def change
    add_column :users, :points_total, :float, :default => 0.0
  end
end
