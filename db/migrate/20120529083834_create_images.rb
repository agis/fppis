class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :album_id
      t.has_attached_file :file
      t.timestamps
    end
  end
end
