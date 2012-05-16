class AddAttachmentsToHomepages < ActiveRecord::Migration
  def self.up
    change_table :homepages do |t|
      t.has_attached_file :main

      t.has_attached_file :first
      t.has_attached_file :second
      t.has_attached_file :third
    end
  end

  def self.down
    drop_attached_file :homepages, :main

    drop_attached_file :homepages, :first
    drop_attached_file :homepages, :second
    drop_attached_file :homepages, :third
  end
end
