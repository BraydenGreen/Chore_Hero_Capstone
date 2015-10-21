class ChangeCompleteDefaultToFalse < ActiveRecord::Migration
  def change
    change_column :chores, :complete, :boolean, :default => false
  end
end
