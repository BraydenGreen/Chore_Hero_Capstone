class AddAttachmentAvatarToChores < ActiveRecord::Migration
  def self.up
    change_table :chores do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :chores, :avatar
  end
end
