class AddDuedateToChores < ActiveRecord::Migration
  def change
    add_column :chores, :due_date, :string
  end
end
