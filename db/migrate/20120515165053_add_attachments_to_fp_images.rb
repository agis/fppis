class AddAttachmentsToFpImages < ActiveRecord::Migration
  def self.up
    change_table :fp_images do |t|
      t.has_attached_file :main

      t.has_attached_file :first
      t.has_attached_file :second
      t.has_attached_file :third
    end
  end

  def self.down
    drop_attached_file :fp_images, :main

    drop_attached_file :fp_images, :first
    drop_attached_file :fp_images, :second
    drop_attached_file :fp_images, :third
  end
end
