class AddUseridToChildren < ActiveRecord::Migration
  def change
    add_column :children, :user_id, :integer
  end
end
