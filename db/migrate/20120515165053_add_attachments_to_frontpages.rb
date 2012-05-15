class AddAttachmentsToFrontpages < ActiveRecord::Migration
  def self.up
    change_table :frontpages do |t|
      t.has_attached_file :main

      t.has_attached_file :first
      t.has_attached_file :second
      t.has_attached_file :third
    end
  end

  def self.down
    drop_attached_file :frontpages, :main

    drop_attached_file :frontpages, :first
    drop_attached_file :frontpages, :second
    drop_attached_file :frontpages, :third
  end
end
