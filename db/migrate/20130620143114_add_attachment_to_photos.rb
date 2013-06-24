class AddAttachmentToPhotos < ActiveRecord::Migration
  def self.up
    add_attachment :photos, :attachment
  end

  def self.down
    remove_attachment :photos, :attachment
  end
end
