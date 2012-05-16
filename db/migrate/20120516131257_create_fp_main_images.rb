class CreateFpMainImages < ActiveRecord::Migration
  def change
    create_table :fp_main_images do |t|
      t.has_attached_file :one
      t.has_attached_file :two
      t.has_attached_file :three
      t.has_attached_file :four
      t.has_attached_file :five
      t.has_attached_file :six

      t.timestamps
    end
  end
end
