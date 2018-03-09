class AddAttachmentIToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :i
    end
  end

  def self.down
    remove_attachment :images, :i
  end
end
