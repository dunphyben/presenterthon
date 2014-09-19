class AddFileAttachmentToPresentation < ActiveRecord::Migration
  def self.up
    add_attachment :presentations, :file
  end

  def self.down
    remove_attachment :presentations, :file
  end
end

