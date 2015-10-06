class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :title
      t.string :description
      t.float :badge_multiplier
      t.belongs_to :child

      t.timestamps null: false
    end
  end
end
