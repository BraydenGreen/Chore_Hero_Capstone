class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :title
      t.text :description
      t.float :xp_value
      t.boolean :complete
      t.belongs_to :child

      t.timestamps null: false
    end
  end
end
