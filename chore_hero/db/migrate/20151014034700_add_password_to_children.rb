class AddPasswordToChildren < ActiveRecord::Migration
  def change
    add_column :children, :password, :string
  end
end
