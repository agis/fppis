class AddPublishedToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :published, :boolean, { :null => false, :default => false }
  end
end
