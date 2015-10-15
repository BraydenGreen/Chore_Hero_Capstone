class AddAvatarsToParents < ActiveRecord::Migration
  def self.up
    change_table :parents do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :parents, :avatar
  end
end
