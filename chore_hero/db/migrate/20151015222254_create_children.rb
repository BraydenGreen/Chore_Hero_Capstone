class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :password
      t.string :supername

      t.timestamps null: false
    end
  end
end
