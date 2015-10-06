class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.float :xp_total
      t.integer :xp_level
      t.string :custom_name
      t.string :archenemy

      t.timestamps null: false
    end
  end
end
