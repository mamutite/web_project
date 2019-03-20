class AddAttachmentDocumentToPrograms < ActiveRecord::Migration[5.0]
  def self.up
    change_table :programs do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :programs, :document
  end
end
